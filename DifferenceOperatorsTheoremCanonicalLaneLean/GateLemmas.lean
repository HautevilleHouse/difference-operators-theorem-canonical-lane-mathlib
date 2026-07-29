import canonicalLaneMinimal.DifferenceOperatorsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse