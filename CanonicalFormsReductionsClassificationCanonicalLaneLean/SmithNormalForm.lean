import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure SmithNormalFormPackage (F : MatrixNormalFormPackage) where
  smithMatrix : Matrix (Fin F.dimension) (Fin F.dimension) (Polynomial F.baseField)
  invariantFactors : List (Polynomial F.baseField)
  elementaryDivisors : List (Polynomial F.baseField)
  smithFormComputed : Prop
  uniquenessOverPID : Prop
  diagonalization : Prop

structure SmithNormalFormEvidence {F : MatrixNormalFormPackage}
    (S : SmithNormalFormPackage F) where
  smithFormComputedClosed : S.smithFormComputed
  uniquenessOverPIDClosed : S.uniquenessOverPID
  diagonalizationClosed : S.diagonalization

def SmithNormalFormClosed {F : MatrixNormalFormPackage}
    (S : SmithNormalFormPackage F) : Prop :=
  S.smithFormComputed ∧ S.uniquenessOverPID ∧ S.diagonalization

theorem smith_normal_form_closed_from_evidence {F : MatrixNormalFormPackage}
    (S : SmithNormalFormPackage F) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact And.intro E.smithFormComputedClosed
    (And.intro E.uniquenessOverPIDClosed E.diagonalizationClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse