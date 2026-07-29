import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure ControlledObject where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  targetSet : stateSpace → Prop

structure AdmissibleClass where
  object : ControlledObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  openLoopReachable A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def openLoopReachable (O : ControlledObject) : Prop :=
  ∃ (x0 : O.stateSpace) (u : ℕ → O.controlSpace) (T : ℕ), O.targetSet (iteratedDynamics O.dynamics x0 u T)

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse