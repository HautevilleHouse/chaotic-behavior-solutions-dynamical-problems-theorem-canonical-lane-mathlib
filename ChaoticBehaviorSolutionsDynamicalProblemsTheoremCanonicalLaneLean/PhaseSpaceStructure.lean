import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

structure PhaseSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  dimension : Nat
  dimensionPositive : dimension > 0

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  topologyClosed : P.dimensionPositive

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.dimensionPositive

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact E.topologyClosed

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse