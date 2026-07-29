import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure JordanReductionPackage (A : AdmissibleClass) where
  jordan_basis : Basis (Fin (dim A.object.carrier)) A.object.field A.object.carrier
  jordan_blocks : List (A.object.field × Nat)
  matrix_in_jordan_form : Prop
  similarity_to_endomorphism : Prop
  jordan_form_existence : Prop

structure JordanReductionEvidence (A : AdmissibleClass) (J : JordanReductionPackage A) where
  matrix_in_jordan_form_closed : J.matrix_in_jordan_form
  similarity_to_endomorphism_closed : J.similarity_to_endomorphism
  jordan_form_existence_closed : J.jordan_form_existence

def JordanReductionClosed (A : AdmissibleClass) (J : JordanReductionPackage A) : Prop :=
  J.matrix_in_jordan_form ∧ J.similarity_to_endomorphism ∧ J.jordan_form_existence

theorem jordan_reduction_closed_from_evidence (A : AdmissibleClass) (J : JordanReductionPackage A)
    (E : JordanReductionEvidence A J) : JordanReductionClosed A J :=
  And.intro E.matrix_in_jordan_form_closed
    (And.intro E.similarity_to_endomorphism_closed E.jordan_form_existence_closed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse