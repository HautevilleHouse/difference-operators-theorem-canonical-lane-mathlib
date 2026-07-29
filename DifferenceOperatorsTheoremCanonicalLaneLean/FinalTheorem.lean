import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DifferenceOperatorsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

def ConstrainedDifferenceOperatorsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_operators_endgame (A : AdmissibleClass) : ConstrainedDifferenceOperatorsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse