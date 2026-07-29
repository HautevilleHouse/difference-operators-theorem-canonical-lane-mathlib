import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.DifferenceOperatorsCore

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure Connection (D : DifferenceOperator) where
  vectorBundle : Type u
  connectionForm : D.symbol → (vectorBundle → vectorBundle)
  parallelTransport : Prop
  curvatureOperator : D.symbol → (vectorBundle → vectorBundle)
  curvatureFormula : ∀ s : D.symbol, curvatureOperator s = (connectionForm s) ∘ (connectionForm s) - (connectionForm D.one) ∘ (connectionForm D.one)
  flatness : Prop

structure CurvaturePackage {D : DifferenceOperator} (C : Connection D) where
  curvatureInvariant : Prop
  traceOfCurvature : Prop
  characteristicClass : Prop

structure CurvatureEvidence {D : DifferenceOperator} {C : Connection D} (P : CurvaturePackage C) where
  curvatureInvariantClosed : P.curvatureInvariant
  traceOfCurvatureClosed : P.traceOfCurvature
  characteristicClassClosed : P.characteristicClass

def CurvatureClosed {D : DifferenceOperator} {C : Connection D} (P : CurvaturePackage C) : Prop :=
  P.curvatureInvariant ∧ P.traceOfCurvature ∧ P.characteristicClass

theorem curvature_closed_from_evidence {D : DifferenceOperator} {C : Connection D} (P : CurvaturePackage C) (E : CurvatureEvidence P) : CurvatureClosed P := by
  exact And.intro E.curvatureInvariantClosed (And.intro E.traceOfCurvatureClosed E.characteristicClassClosed)

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse