import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean

/-- Liouville integrability and its failure leading to chaos. -/
structure LiouvilleIntegrabilityPackage where
  hamiltonian : Type u → Prop
  independentIntegrals : ℕ
  involutivePoissonCommutation : Prop
  actionAngleVariablesExist : Prop
  nonIntegrabilityIndicatesChaos : Prop

structure LiouvilleEvidence (L : LiouvilleIntegrabilityPackage) where
  involutivePoissonCommutationClosed : L.involutivePoissonCommutation
  actionAngleVariablesExistClosed : L.actionAngleVariablesExist
  nonIntegrabilityIndicatesChaosClosed : L.nonIntegrabilityIndicatesChaos

def LiouvilleIntegrabilityClosed (L : LiouvilleIntegrabilityPackage) : Prop :=
  L.involutivePoissonCommutation ∧ L.actionAngleVariablesExist ∧ L.nonIntegrabilityIndicatesChaos

theorem liouville_integrability_closed_from_evidence
    (L : LiouvilleIntegrabilityPackage) (E : LiouvilleEvidence L) :
    LiouvilleIntegrabilityClosed L := by
  exact And.intro E.involutivePoissonCommutationClosed
    (And.intro E.actionAngleVariablesExistClosed E.nonIntegrabilityIndicatesChaosClosed)

end ChaoticBehaviorSolutionsDynamicalProblemsTheoremCanonicalLaneLean
end HautevilleHouse
