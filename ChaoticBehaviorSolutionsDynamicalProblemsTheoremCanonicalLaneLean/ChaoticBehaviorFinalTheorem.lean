import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

def ConstrainedChaoticBehaviorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chaotic_behavior_endgame (A : AdmissibleClass) :
    ConstrainedChaoticBehaviorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
