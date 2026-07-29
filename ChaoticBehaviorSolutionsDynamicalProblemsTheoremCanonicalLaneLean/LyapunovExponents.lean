import ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean

structure LyapunovExponentPackage where
  lyapunovExponent : ℝ
  positivity : Prop
  exponentialDivergence : Prop
  orbitSeparation : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positivityClosed : L.positivity
  exponentialDivergenceClosed : L.exponentialDivergence
  orbitSeparationClosed : L.orbitSeparation

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positivity ∧ L.exponentialDivergence ∧ L.orbitSeparation

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.positivityClosed (And.intro E.exponentialDivergenceClosed E.orbitSeparationClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse