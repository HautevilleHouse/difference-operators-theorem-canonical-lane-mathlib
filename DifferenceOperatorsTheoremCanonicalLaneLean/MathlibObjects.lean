import canonicalLaneMathlib.CanonicalLaneMathlibCore
import Mathlib.Geometry.Manifold.Basic

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  curvatureInvariant : Prop
  holonomyGroup : Type u
  connectionFlat : Prop
  conclusion : connectionFlat

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse