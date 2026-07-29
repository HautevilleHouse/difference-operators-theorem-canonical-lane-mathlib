import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure HolonomyGroup {D : DifferenceOperator} (C : Connection D) where
  loopSpace : Type u
  holonomyMap : loopSpace → (C.vectorBundle → C.vectorBundle)
  groupStructure : Prop
  reducedHolonomy : Prop
  restrictedHolonomy : Prop
  ambroseSingerTheorem : Prop

structure HolonomyPackage {D : DifferenceOperator} {C : Connection D} (H : HolonomyGroup C) where
  holonomyGroupClosed : H.groupStructure
  reducedHolonomyClosed : H.reducedHolonomy
  ambroseSingerClosed : H.ambroseSingerTheorem

def HolonomyClosed {D : DifferenceOperator} {C : Connection D} (H : HolonomyGroup C) : Prop :=
  H.groupStructure ∧ H.reducedHolonomy ∧ H.ambroseSingerTheorem

theorem holonomy_closed_from_evidence {D : DifferenceOperator} {C : Connection D} (H : HolonomyGroup C) (E : HolonomyPackage H) : HolonomyClosed H := by
  exact And.intro E.holonomyGroupClosed (And.intro E.reducedHolonomyClosed E.ambroseSingerClosed)

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse