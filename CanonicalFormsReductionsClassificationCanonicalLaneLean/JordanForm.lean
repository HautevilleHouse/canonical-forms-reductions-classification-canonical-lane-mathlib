import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure JordanBlock where
  eigenvalue : ℂ
  size : ℕ

structure JordanFormPackage {M : MatrixSpace} where
  blocks : List JordanBlock
  decomposition : Prop
  similarity : Prop
  uniqueness : Prop

structure JordanFormEvidence {M : MatrixSpace} (J : JordanFormPackage) where
  decompositionClosed : J.decomposition
  similarityClosed : J.similarity
  uniquenessClosed : J.uniqueness

def JordanFormClosed {M : MatrixSpace} (J : JordanFormPackage) : Prop :=
  J.decomposition ∧ J.similarity ∧ J.uniqueness

theorem jordan_form_closed_from_evidence
    {M : MatrixSpace} (J : JordanFormPackage) (E : JordanFormEvidence J) :
    JordanFormClosed J := by
  exact And.intro E.decompositionClosed
    (And.intro E.similarityClosed E.uniquenessClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse