import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure JordanCanonicalFormPackage (F : MatrixNormalFormPackage) where
  jordanBlocks : List (ℕ × F.baseField)
  jordanMatrix : Matrix (Fin F.dimension) (Fin F.dimension) F.baseField
  jordanFormComputed : Prop
  uniquenessOverAlgebraicClosure : Prop
  basisTransformationExists : Prop

structure JordanCanonicalFormEvidence {F : MatrixNormalFormPackage}
    (J : JordanCanonicalFormPackage F) where
  jordanFormComputedClosed : J.jordanFormComputed
  uniquenessOverAlgebraicClosureClosed : J.uniquenessOverAlgebraicClosure
  basisTransformationExistsClosed : J.basisTransformationExists

def JordanCanonicalFormClosed {F : MatrixNormalFormPackage}
    (J : JordanCanonicalFormPackage F) : Prop :=
  J.jordanFormComputed ∧ J.uniquenessOverAlgebraicClosure ∧ J.basisTransformationExists

theorem jordan_canonical_form_closed_from_evidence {F : MatrixNormalFormPackage}
    (J : JordanCanonicalFormPackage F) (E : JordanCanonicalFormEvidence J) :
    JordanCanonicalFormClosed J := by
  exact And.intro E.jordanFormComputedClosed
    (And.intro E.uniquenessOverAlgebraicClosureClosed E.basisTransformationExistsClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse