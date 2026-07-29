import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationCanonicalLaneLean.PolynomialRingPackage

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure InvariantFactorPackage (P : PolynomialRingPackage) where
  matrix : Type u
  invariantFactors : List (P.polynomialRing)
  elementaryDivisors : List (P.polynomialRing)
  invariantFactorsCorrect : Prop
  elementaryDivisorsCorrect : Prop
  rationalCanonicalFormExists : Prop

structure InvariantFactorEvidence {P : PolynomialRingPackage} (I : InvariantFactorPackage P) where
  invariantFactorsCorrectClosed : I.invariantFactorsCorrect
  elementaryDivisorsCorrectClosed : I.elementaryDivisorsCorrect
  rationalCanonicalFormExistsClosed : I.rationalCanonicalFormExists

def InvariantFactorClosed {P : PolynomialRingPackage} (I : InvariantFactorPackage P) : Prop :=
  I.invariantFactorsCorrect ∧ I.elementaryDivisorsCorrect ∧ I.rationalCanonicalFormExists

theorem invariant_factor_closed_from_evidence
    {P : PolynomialRingPackage} (I : InvariantFactorPackage P)
    (E : InvariantFactorEvidence I) : InvariantFactorClosed I := by
  exact And.intro E.invariantFactorsCorrectClosed
    (And.intro E.elementaryDivisorsCorrectClosed E.rationalCanonicalFormExistsClosed)

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse
