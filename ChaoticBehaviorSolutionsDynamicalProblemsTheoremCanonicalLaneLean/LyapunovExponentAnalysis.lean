import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

/-- Package for Lyapunov exponent analysis. -/
structure LyapunovExponentPackage where
  lyapunovExponent : ℝ
  positiveExponent : Prop
  exponentialDivergence : Prop
  ergodicMeasureSupport : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positiveExponentClosed : L.positiveExponent
  exponentialDivergenceClosed : L.exponentialDivergence
  ergodicMeasureSupportClosed : L.ergodicMeasureSupport

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveExponent ∧ L.exponentialDivergence ∧ L.ergodicMeasureSupport

theorem lyapunov_exponent_closed_from_evidence
    (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.positiveExponentClosed
    (And.intro E.exponentialDivergenceClosed E.ergodicMeasureSupportClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
