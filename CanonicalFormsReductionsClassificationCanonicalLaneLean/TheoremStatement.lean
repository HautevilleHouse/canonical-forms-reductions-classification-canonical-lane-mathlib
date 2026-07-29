import HautevilleHouse.CanonicalFormsReductionsClassificationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationCanonicalLaneLean

structure TheoremStatement where
  name : String
  statement : String
  closureEstablished : Bool

def canonicalFormsReductionsTheorem : TheoremStatement :=
  { name := "Canonical Forms Reductions Classification",
    statement := "Every admissible class is bridge-closed and gate-closed.",
    closureEstablished := true
  }

theorem theorem_statement_holds :
    ∀ A : AdmissibleClass, ConstrainedCanonicalFormsReductionsClosure A :=
  constrained_canonical_forms_reductions_endgame

end CanonicalFormsReductionsClassificationCanonicalLaneLean
end HautevilleHouse