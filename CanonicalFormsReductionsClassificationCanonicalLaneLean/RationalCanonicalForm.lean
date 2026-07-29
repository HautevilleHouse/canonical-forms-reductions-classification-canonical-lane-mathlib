import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure RationalCanonicalFormPackage (F : MatrixNormalFormPackage) where
  companionBlocks : List (Polynomial F.baseField)
  rationalCanonicalMatrix : Matrix (Fin F.dimension) (Fin F.dimension) F.baseField
  rationalFormComputed : Prop
  uniquenessOverField : Prop
  cyclicDecomposition : Prop

structure RationalCanonicalFormEvidence {F : MatrixNormalFormPackage}
    (R : RationalCanonicalFormPackage F) where
  rationalFormComputedClosed : R.rationalFormComputed
  uniquenessOverFieldClosed : R.uniquenessOverField
  cyclicDecompositionClosed : R.cyclicDecomposition

def RationalCanonicalFormClosed {F : MatrixNormalFormPackage}
    (R : RationalCanonicalFormPackage F) : Prop :=
  R.rationalFormComputed ∧ R.uniquenessOverField ∧ R.cyclicDecomposition

theorem rational_canonical_form_closed_from_evidence {F : MatrixNormalFormPackage}
    (R : RationalCanonicalFormPackage F) (E : RationalCanonicalFormEvidence R) :
    RationalCanonicalFormClosed R := by
  exact And.intro E.rationalFormComputedClosed
    (And.intro E.uniquenessOverFieldClosed E.cyclicDecompositionClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse