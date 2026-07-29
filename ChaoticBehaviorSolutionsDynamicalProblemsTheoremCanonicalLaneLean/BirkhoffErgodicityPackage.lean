import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure BirkhoffErgodicityPackage where
  invariantMeasure : Type u
  ergodicDecomposition : Prop
  timeAverageEqualsSpaceAverage : Prop
  mixingProperty : Prop

def BirkhoffErgodicityClosed (B : BirkhoffErgodicityPackage) : Prop :=
  B.ergodicDecomposition ∧ B.timeAverageEqualsSpaceAverage ∧ B.mixingProperty

structure BirkhoffErgodicityEvidence (B : BirkhoffErgodicityPackage) where
  ergodicDecompositionClosed : B.ergodicDecomposition
  timeAverageEqualsSpaceAverageClosed : B.timeAverageEqualsSpaceAverage
  mixingPropertyClosed : B.mixingProperty

theorem birkhoff_ergodicity_closed_from_evidence (B : BirkhoffErgodicityPackage)
    (E : BirkhoffErgodicityEvidence B) : BirkhoffErgodicityClosed B := by
  exact And.intro E.ergodicDecompositionClosed
    (And.intro E.timeAverageEqualsSpaceAverageClosed E.mixingPropertyClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse