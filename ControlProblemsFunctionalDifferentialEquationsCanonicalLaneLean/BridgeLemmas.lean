import HautevilleHouse.ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  openLoopReachable A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- For any admissible class, we can construct an open-loop control that reaches the target.
  sorry

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse