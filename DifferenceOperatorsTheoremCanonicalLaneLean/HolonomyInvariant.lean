import canonicalLaneMinimal.DifferenceOperatorsTheoremCanonicalLaneLean.DifferenceOperatorAdmittedObject

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure HolonomyInvariantPackage where
  bundle : VectorBundle
  connection : Prop
  curvatureZero : Prop
  parallelTransport : Prop
  holonomyGroup : Prop

structure HolonomyInvariantEvidence (H : HolonomyInvariantPackage) where
  connectionClosed : H.connection
  curvatureZeroClosed : H.curvatureZero
  parallelTransportClosed : H.parallelTransport
  holonomyGroupClosed : H.holonomyGroup

def HolonomyInvariantClosed (H : HolonomyInvariantPackage) : Prop :=
  H.connection ∧ H.curvatureZero ∧ H.parallelTransport ∧ H.holonomyGroup

theorem holonomy_invariant_closed_from_evidence (H : HolonomyInvariantPackage)
    (E : HolonomyInvariantEvidence H) : HolonomyInvariantClosed H := by
  exact And.intro E.connectionClosed
    (And.intro E.curvatureZeroClosed
      (And.intro E.parallelTransportClosed E.holonomyGroupClosed))

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse