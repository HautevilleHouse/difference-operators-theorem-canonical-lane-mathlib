import canonicalLaneMinimal.DifferenceOperatorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

def projection (A : AdmissibleClass) : A.object.bundle.base := (fun x => x) A.object.bundle.base

theorem projection_idempotent (A : AdmissibleClass) : projection (projection A) = projection A := by
  rfl

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse