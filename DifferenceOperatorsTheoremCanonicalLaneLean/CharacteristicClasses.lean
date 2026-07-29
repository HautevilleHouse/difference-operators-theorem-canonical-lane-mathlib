import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure CharacteristicClass {D : DifferenceOperator} (C : Connection D) where
  classSymbol : Type u
  polynomialInvariant : C.curvatureOperator → ℤ
  chernCharacter : ℤ → ℤ
  pontryaginClass : ℕ → ℤ
  eulerClass : ℤ

structure CharacteristicPackage {D : DifferenceOperator} {C : Connection D} (Ch : CharacteristicClass C) where
  chernWeilTheorem : Prop
  topologicalInvariance : Prop
  characteristicNumbersClosed : Prop

structure CharacteristicEvidence {D : DifferenceOperator} {C : Connection D} {Ch : CharacteristicClass C} (P : CharacteristicPackage Ch) where
  chernWeilClosed : P.chernWeilTheorem
  topologicalInvarianceClosed : P.topologicalInvariance
  characteristicNumbersClosed : P.characteristicNumbersClosed

def CharacteristicClosed {D : DifferenceOperator} {C : Connection D} {Ch : CharacteristicClass C} (P : CharacteristicPackage Ch) : Prop :=
  P.chernWeilTheorem ∧ P.topologicalInvariance ∧ P.characteristicNumbersClosed

theorem characteristic_closed_from_evidence {D : DifferenceOperator} {C : Connection D} {Ch : CharacteristicClass C} (P : CharacteristicPackage Ch) (E : CharacteristicEvidence P) : CharacteristicClosed P := by
  exact And.intro E.chernWeilClosed (And.intro E.topologicalInvarianceClosed E.characteristicNumbersClosed)

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse