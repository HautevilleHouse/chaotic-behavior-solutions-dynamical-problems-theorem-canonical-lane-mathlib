import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

/-- Smale horseshoe structure for symbolic dynamics. -/
structure SmaleHorseshoe where
  invariantSet : Type u
  symbolicDynamics : Type v
  topologicalConjugacy : Prop
  shiftMapContinuous : Prop
  chaosInherited : Prop

structure HorseshoeEvidence (H : SmaleHorseshoe) where
  topologicalConjugacyClosed : H.topologicalConjugacy
  shiftMapContinuousClosed : H.shiftMapContinuous
  chaosInheritedClosed : H.chaosInherited

def HorseshoeClosed (H : SmaleHorseshoe) : Prop :=
  H.topologicalConjugacy ∧ H.shiftMapContinuous ∧ H.chaosInherited

theorem horseshoe_closed_from_evidence (H : SmaleHorseshoe)
    (E : HorseshoeEvidence H) : HorseshoeClosed H := by
  exact And.intro E.topologicalConjugacyClosed
    (And.intro E.shiftMapContinuousClosed E.chaosInheritedClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
