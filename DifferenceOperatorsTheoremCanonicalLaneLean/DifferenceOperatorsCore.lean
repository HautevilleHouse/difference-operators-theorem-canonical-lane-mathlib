import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceOperatorsTheoremCanonicalLaneLean

structure DifferenceOperator where
  symbol : Type u
  order : Nat
  coefficient : symbol -> Type v

structure SymbolCalculus where
  symbol : Type u
  product : symbol -> symbol -> symbol
  sum : symbol -> symbol -> symbol
  zero : symbol
  one : symbol
  productAssoc : ∀ a b c : symbol, product (product a b) c = product a (product b c)
  sumComm : ∀ a b : symbol, sum a b = sum b a
  zeroAdd : ∀ a : symbol, sum zero a = a
  oneMul : ∀ a : symbol, product one a = a

def DifferenceOperatorsClosed (D : DifferenceOperator) : Prop :=
  D.order ≥ 1

end DifferenceOperatorsTheoremCanonicalLaneLean
end HautevilleHouse