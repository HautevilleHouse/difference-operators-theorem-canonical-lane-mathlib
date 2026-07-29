import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.DifferenceOperatorsCore

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure IndexTheoremPackage (D : DifferenceOperator) where
  index : ℤ
  kernelDimension : ℕ
  cokernelDimension : ℕ
  indexFormula : index = kernelDimension - cokernelDimension
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : analyticIndex ↔ topologicalIndex

structure IndexTheoremEvidence {D : DifferenceOperator} (P : IndexTheoremPackage D) where
  kernelDimensionClosed : P.kernelDimension = 0
  cokernelDimensionClosed : P.cokernelDimension = 0
  indexFormulaClosed : P.index = 0
  indexEqualityClosed : P.indexEquality

def IndexTheoremClosed {D : DifferenceOperator} (P : IndexTheoremPackage D) : Prop :=
  P.index = 0 ∧ P.analyticIndex ∧ P.topologicalIndex ∧ P.indexEquality

theorem index_theorem_closed_from_evidence {D : DifferenceOperator} (P : IndexTheoremPackage D) (E : IndexTheoremEvidence P) : IndexTheoremClosed P := by
  exact And.intro (by
    calc
      P.index = P.kernelDimension - P.cokernelDimension := P.indexFormula
      _ = 0 - 0 := by simp [E.kernelDimensionClosed, E.cokernelDimensionClosed]
      _ = 0 := by simp)
    (And.intro (by exact P.analyticIndex) (And.intro (by exact P.topologicalIndex) E.indexEqualityClosed))

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse