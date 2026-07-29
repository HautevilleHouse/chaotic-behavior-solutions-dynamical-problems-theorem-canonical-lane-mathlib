import ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChaoticSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dynamicalSystem : carrier → carrier

structure ChaoticAdmittedObject where
  space : ChaoticSpace
  denseOrbits : Prop
  sensitivity : Prop
  topologicalTransitivity : Prop
  proofModel : Type
  witnessClosed : Prop
  conclusion : witnessClosed

def ChaoticWitnessClosed (O : ChaoticAdmittedObject) : Prop :=
  O.witnessClosed

end ChaoticBehaviorSolutionsDynamicalProblemsCanonicalLaneLean
end HautevilleHouse