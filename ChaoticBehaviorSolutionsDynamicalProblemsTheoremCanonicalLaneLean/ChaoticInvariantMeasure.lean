import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure ChaoticInvariantMeasurePackage where
  invariantProbabilityMeasure : Type u
  ergodicityWithRespectToMeasure : Prop
  positiveLyapunovExponentInMeasure : Prop
  entropyPositivity : Prop
  srBMeasureProperty : Prop

structure ChaoticInvariantMeasureEvidence (C : ChaoticInvariantMeasurePackage) where
  ergodicityWithRespectToMeasureClosed : C.ergodicityWithRespectToMeasure
  positiveLyapunovExponentInMeasureClosed : C.positiveLyapunovExponentInMeasure
  entropyPositivityClosed : C.entropyPositivity
  srBMeasurePropertyClosed : C.srBMeasureProperty

def ChaoticInvariantMeasureClosed (C : ChaoticInvariantMeasurePackage) : Prop :=
  C.ergodicityWithRespectToMeasure ∧ C.positiveLyapunovExponentInMeasure ∧ C.entropyPositivity ∧ C.srBMeasureProperty

theorem chaotic_invariant_measure_closed_from_evidence (C : ChaoticInvariantMeasurePackage) (E : ChaoticInvariantMeasureEvidence C) : ChaoticInvariantMeasureClosed C := by
  exact And.intro E.ergodicityWithRespectToMeasureClosed (And.intro E.positiveLyapunovExponentInMeasureClosed (And.intro E.entropyPositivityClosed E.srBMeasurePropertyClosed))

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse