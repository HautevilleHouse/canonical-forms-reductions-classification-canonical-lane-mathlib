import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure AdmissibleClass where
  object : CanonicalFormObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse