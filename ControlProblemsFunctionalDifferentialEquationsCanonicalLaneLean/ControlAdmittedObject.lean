import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure ControlSystem where
  stateSpace : Type
  controlSpace : Type
  dynamics : stateSpace → controlSpace → stateSpace

definition functionalDifferentialEquation : Prop := True

structure ControlAdmittedObject where
  system : ControlSystem
  equationSatisfied : Prop
  solutionExists : Prop
  conclusion : solutionExists

def ControlWitnessClosed (O : ControlAdmittedObject) : Prop :=
  O.solutionExists

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
