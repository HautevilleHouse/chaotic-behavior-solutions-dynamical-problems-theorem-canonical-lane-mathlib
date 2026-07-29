import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure LyapunovExponentPackage where
  linearizedFlow : Type u
  exponentialGrowthRates : Type v
  positiveExponentExists : Prop
  rateFunctionContinuous : Prop
  osedelecMultiplicativeErgodicTheoremApplied : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  positiveExponentExistsClosed : L.positiveExponentExists
  rateFunctionContinuousClosed : L.rateFunctionContinuous
  osedelecMultiplicativeErgodicTheoremAppliedClosed : L.osedelecMultiplicativeErgodicTheoremApplied

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveExponentExists ∧ L.rateFunctionContinuous ∧ L.osedelecMultiplicativeErgodicTheoremApplied

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.positiveExponentExistsClosed (And.intro E.rateFunctionContinuousClosed E.osedelecMultiplicativeErgodicTheoremAppliedClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse