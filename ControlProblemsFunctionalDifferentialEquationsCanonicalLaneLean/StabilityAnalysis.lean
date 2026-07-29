import HautevilleHouse.ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure StabilityPackage where
  lyapunovFunction : (ControlledObject.stateSpace → ℝ) → Prop
  asymptoticStability : Prop
  exponentialStability : Prop
  inputToStateStability : Prop
  robustnessMargins : Prop

structure StabilityEvidence (S : StabilityPackage) where
  lyapunovFunctionClosed : S.lyapunovFunction
  asymptoticStabilityClosed : S.asymptoticStability
  exponentialStabilityClosed : S.exponentialStability
  inputToStateStabilityClosed : S.inputToStateStability
  robustnessMarginsClosed : S.robustnessMargins

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.lyapunovFunction ∧ S.asymptoticStability ∧ S.exponentialStability ∧ S.inputToStateStability ∧ S.robustnessMargins

theorem stability_closed_from_evidence (S : StabilityPackage) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.lyapunovFunctionClosed (And.intro E.asymptoticStabilityClosed (And.intro E.exponentialStabilityClosed (And.intro E.inputToStateStabilityClosed E.robustnessMarginsClosed)))

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse