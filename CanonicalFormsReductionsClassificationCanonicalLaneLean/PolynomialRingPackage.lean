import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure PolynomialRingPackage where
  baseField : Type u
  polynomialRing : Type v
  fieldAxioms : Prop
  polynomialRingAxioms : Prop
  polynomialRingNoetherian : Prop
  polynomialRingUFD : Prop

structure PolynomialRingEvidence (P : PolynomialRingPackage) where
  fieldAxiomsClosed : P.fieldAxioms
  polynomialRingAxiomsClosed : P.polynomialRingAxioms
  polynomialRingNoetherianClosed : P.polynomialRingNoetherian
  polynomialRingUFDClosed : P.polynomialRingUFD

def PolynomialRingClosed (P : PolynomialRingPackage) : Prop :=
  P.fieldAxioms ∧ P.polynomialRingAxioms ∧ P.polynomialRingNoetherian ∧ P.polynomialRingUFD

theorem polynomial_ring_closed_from_evidence
    (P : PolynomialRingPackage) (E : PolynomialRingEvidence P) : PolynomialRingClosed P := by
  exact And.intro E.fieldAxiomsClosed
    (And.intro E.polynomialRingAxiomsClosed
      (And.intro E.polynomialRingNoetherianClosed E.polynomialRingUFDClosed))

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse
