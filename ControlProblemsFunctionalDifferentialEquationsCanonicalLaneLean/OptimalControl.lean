import HautevilleHouse.ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure OptimalControlProblem where
  costFunctional : (ControlledObject.stateSpace → ℝ) → ℝ
  existence : Prop
  uniqueness : Prop
  pmpConditions : Prop
  hjbSatisfied : Prop

structure OptimalControlEvidence (P : OptimalControlProblem) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness
  pmpConditionsClosed : P.pmpConditions
  hjbSatisfiedClosed : P.hjbSatisfied

def OptimalControlClosed (P : OptimalControlProblem) : Prop :=
  P.existence ∧ P.uniqueness ∧ P.pmpConditions ∧ P.hjbSatisfied

theorem optimal_control_closed_from_evidence (P : OptimalControlProblem) (E : OptimalControlEvidence P) :
    OptimalControlClosed P := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed (And.intro E.pmpConditionsClosed E.hjbSatisfiedClosed))

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse