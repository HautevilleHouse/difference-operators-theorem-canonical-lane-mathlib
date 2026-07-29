import DifferenceOperatorsTheoremCanonicalLaneLean.DifferenceOperatorsInvariant

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure HolonomyGroupPackage where
  loopSpace : Type u
  holonomyRepresentation : Prop
  ambroseSingerTheorem : Prop
  reducedHolonomy : Prop
  localHolonomy : Prop
  flatConnectionImpliesTrivialHolonomy : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  loopSpaceClosed : H.loopSpace
  holonomyRepresentationClosed : H.holonomyRepresentation
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  reducedHolonomyClosed : H.reducedHolonomy
  localHolonomyClosed : H.localHolonomy

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.loopSpace ∧ H.holonomyRepresentation ∧ H.ambroseSingerTheorem ∧ H.reducedHolonomy ∧ H.localHolonomy

theorem holonomy_group_closed_from_evidence
    (H : HolonomyGroupPackage) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.loopSpaceClosed
    (And.intro E.holonomyRepresentationClosed
      (And.intro E.ambroseSingerTheoremClosed
        (And.intro E.reducedHolonomyClosed E.localHolonomyClosed)))

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse