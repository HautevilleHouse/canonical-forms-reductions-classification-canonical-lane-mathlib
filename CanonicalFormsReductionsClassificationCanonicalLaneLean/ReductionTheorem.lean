import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

theorem reduction_theorem_statement (A : AdmissibleClass) (P : CanonicalFormPackage A) : CanonicalFormPackageClosed A P → ConstrainedCanonicalClosure A :=
  by
    intro h
    exact constrained_canonical_endgame A

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse