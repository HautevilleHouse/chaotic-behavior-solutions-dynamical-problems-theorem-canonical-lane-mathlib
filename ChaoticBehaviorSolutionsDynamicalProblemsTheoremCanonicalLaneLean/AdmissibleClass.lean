import ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean

structure AdmissibleClass where
  object : ChaoticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChaoticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse