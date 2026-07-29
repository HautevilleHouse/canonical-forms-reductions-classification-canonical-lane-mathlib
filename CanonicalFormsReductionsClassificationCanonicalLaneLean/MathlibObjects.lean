import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure MatrixSpace where
  coefficientField : Type u
  [fieldInst : Field coefficientField]
  rows : ℕ
  cols : ℕ
  carrier : Matrix (Fin rows) (Fin cols) coefficientField

structure LinearOperator (V : Type u) [AddCommGroup V] [Module (MatrixSpace.coefficientField) V] where
  matrixRep : MatrixSpace
  action : V → V
  linear : Prop

structure CanonicalFormsAdmittedObject where
  space : MatrixSpace
  operator : LinearOperator (Fin (space.rows) → space.coefficientField)
  canonicalFormReached : Bool
  conclusion : canonicalFormReached = true

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse