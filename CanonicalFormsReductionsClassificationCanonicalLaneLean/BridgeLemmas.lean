import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse