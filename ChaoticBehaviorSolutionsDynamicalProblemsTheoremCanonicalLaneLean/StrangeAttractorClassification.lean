import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure StrangeAttractorPackage where
  attractorSet : Set (ℕ → ℝ)
  topologicalTransitivity : Prop
  sensitiveDependence : Prop
  densePeriodicOrbits : Prop

def StrangeAttractorClosed (S : StrangeAttractorPackage) : Prop :=
  S.topologicalTransitivity ∧ S.sensitiveDependence ∧ S.densePeriodicOrbits

structure StrangeAttractorEvidence (S : StrangeAttractorPackage) where
  topologicalTransitivityClosed : S.topologicalTransitivity
  sensitiveDependenceClosed : S.sensitiveDependence
  densePeriodicOrbitsClosed : S.densePeriodicOrbits

theorem strange_attractor_closed_from_evidence (S : StrangeAttractorPackage)
    (E : StrangeAttractorEvidence S) : StrangeAttractorClosed S := by
  exact And.intro E.topologicalTransitivityClosed
    (And.intro E.sensitiveDependenceClosed E.densePeriodicOrbitsClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse