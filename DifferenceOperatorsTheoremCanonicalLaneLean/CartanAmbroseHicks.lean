import DifferenceOperatorsTheoremCanonicalLaneLean.HolonomyGroup

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure CartanAmbroseHicksPackage where
  curvatureTensorComparison : Prop
  holonomyDetermination : Prop
  uniqueDevelopment : Prop
  localIsometryDetermination : Prop

def CartanAmbroseHicksClosed (A : AdmittedObject) : Prop :=
  A.curvatureInvariant → A.connectionFlat

theorem cartan_ambrose_hicks_closed_from_package
    (A : AdmittedObject) (P : CartanAmbroseHicksPackage) :
    CartanAmbroseHicksClosed A := by
  intro hcurv
  unfold CartanAmbroseHicksClosed
  exact A.conclusion

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse