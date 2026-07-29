import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DifferenceOperator
  endpointSatisfied : IndexTheoremClosed (IndexTheoremPackage.mk ...)  -- placeholder
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferenceOperatorsClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse