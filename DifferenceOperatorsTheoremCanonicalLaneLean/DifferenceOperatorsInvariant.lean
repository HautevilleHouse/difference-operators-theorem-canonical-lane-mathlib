import DifferenceOperatorsTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure DifferenceOperatorsInvariantPackage where
  curvatureForm : Type u
  torsionForm : Type u
  bianchiIdentityFirst : Prop
  bianchiIdentitySecond : Prop
  structureEquation : Prop
  invariantUnderParallelTransport : Prop

structure DifferenceOperatorsInvariantEvidence (P : DifferenceOperatorsInvariantPackage) where
  curvatureFormClosed : P.curvatureForm
  torsionFormClosed : P.torsionForm
  bianchiIdentityFirstClosed : P.bianchiIdentityFirst
  bianchiIdentitySecondClosed : P.bianchiIdentitySecond
  structureEquationClosed : P.structureEquation

def DifferenceOperatorsInvariantClosed (P : DifferenceOperatorsInvariantPackage) : Prop :=
  P.curvatureForm ∧ P.torsionForm ∧ P.bianchiIdentityFirst ∧ P.bianchiIdentitySecond ∧ P.structureEquation

theorem difference_operators_invariant_closed_from_evidence
    (P : DifferenceOperatorsInvariantPackage) (E : DifferenceOperatorsInvariantEvidence P) :
    DifferenceOperatorsInvariantClosed P := by
  exact And.intro E.curvatureFormClosed
    (And.intro E.torsionFormClosed
      (And.intro E.bianchiIdentityFirstClosed
        (And.intro E.bianchiIdentitySecondClosed E.structureEquationClosed)))

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse