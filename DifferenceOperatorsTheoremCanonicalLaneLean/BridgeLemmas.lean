import canonicalLaneMinimal.DifferenceOperatorsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferenceOperatorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse