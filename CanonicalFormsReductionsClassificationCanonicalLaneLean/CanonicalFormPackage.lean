import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationCanonicalLaneLean.InvariantFactorPackage

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure CanonicalFormPackage {P : PolynomialRingPackage} (I : InvariantFactorPackage P) where
  jordanFormConstructed : Prop
  rationalCanonicalFormConstructed : Prop
  uniquenessOfCanonicalForm : Prop
  reductionAlgorithmTerminates : Prop

structure CanonicalFormEvidence {P : PolynomialRingPackage} {I : InvariantFactorPackage P}
    (C : CanonicalFormPackage I) where
  jordanFormConstructedClosed : C.jordanFormConstructed
  rationalCanonicalFormConstructedClosed : C.rationalCanonicalFormConstructed
  uniquenessOfCanonicalFormClosed : C.uniquenessOfCanonicalForm
  reductionAlgorithmTerminatesClosed : C.reductionAlgorithmTerminates

def CanonicalFormClosed {P : PolynomialRingPackage} {I : InvariantFactorPackage P}
    (C : CanonicalFormPackage I) : Prop :=
  C.jordanFormConstructed ∧ C.rationalCanonicalFormConstructed ∧
  C.uniquenessOfCanonicalForm ∧ C.reductionAlgorithmTerminates

theorem canonical_form_closed_from_evidence
    {P : PolynomialRingPackage} {I : InvariantFactorPackage P}
    (C : CanonicalFormPackage I) (E : CanonicalFormEvidence C) : CanonicalFormClosed C := by
  exact And.intro E.jordanFormConstructedClosed
    (And.intro E.rationalCanonicalFormConstructedClosed
      (And.intro E.uniquenessOfCanonicalFormClosed E.reductionAlgorithmTerminatesClosed))

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse
