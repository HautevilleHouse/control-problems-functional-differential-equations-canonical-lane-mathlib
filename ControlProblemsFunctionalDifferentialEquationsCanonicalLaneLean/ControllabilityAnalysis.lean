import ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean.ControlAdmittedObject

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure ControlReachability where
  initialSet : Type
  targetSet : Type
  reachable : Prop
  time : ℝ

definition Controllability (C : ControlReachability) : Prop :=
  C.reachable

theorem controllability_criterion (C : ControlReachability) (h : Controllability C) : 
  Controllability C := h

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
