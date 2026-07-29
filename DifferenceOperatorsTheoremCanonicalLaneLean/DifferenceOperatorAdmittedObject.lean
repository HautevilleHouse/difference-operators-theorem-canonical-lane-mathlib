import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure VectorBundle where
  base : Type u
  fiber : Type v
  projection : base → fiber

data DifferenceOperator : VectorBundle → Type (max u v) where
  | mk : (α : VectorBundle) → (α.base → α.fiber) → DifferenceOperator α

structure DifferenceOperatorAdmittedObject where
  bundle : VectorBundle
  frame : Prop
  connectionFlat : Prop
  holonomyTrivial : Prop
  conclusion : holonomyTrivial

def DifferenceOperatorWitnessClosed (O : DifferenceOperatorAdmittedObject) : Prop :=
  O.holonomyTrivial

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse