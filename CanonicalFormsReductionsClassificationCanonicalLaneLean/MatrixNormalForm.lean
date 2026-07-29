import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure MatrixNormalFormPackage where
  baseField : Type u
  dimension : ℕ
  matrix : Matrix (Fin dimension) (Fin dimension) baseField
  characteristicPolynomial : Polynomial baseField
  minimalPolynomial : Polynomial baseField
  invariantFactors : List (Polynomial baseField)
  normalFormComputed : Prop
  similarityInvariant : Prop
  reductionAlgorithmValid : Prop

structure MatrixNormalFormEvidence (P : MatrixNormalFormPackage) where
  normalFormComputedClosed : P.normalFormComputed
  similarityInvariantClosed : P.similarityInvariant
  reductionAlgorithmValidClosed : P.reductionAlgorithmValid

def MatrixNormalFormClosed (P : MatrixNormalFormPackage) : Prop :=
  P.normalFormComputed ∧ P.similarityInvariant ∧ P.reductionAlgorithmValid

theorem matrix_normal_form_closed_from_evidence (P : MatrixNormalFormPackage)
    (E : MatrixNormalFormEvidence P) : MatrixNormalFormClosed P := by
  exact And.intro E.normalFormComputedClosed
    (And.intro E.similarityInvariantClosed E.reductionAlgorithmValidClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse