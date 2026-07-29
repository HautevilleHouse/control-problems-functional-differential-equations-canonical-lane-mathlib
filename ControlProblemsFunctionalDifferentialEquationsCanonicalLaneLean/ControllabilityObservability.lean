import HautevilleHouse.ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean

structure ControllabilityObservabilityPackage where
  linearSystem : Type u
  controllabilityCondition : Prop
  observabilityCondition : Prop
  kalmanRankCondition : Prop
  minimalRealization : Prop

structure ControllabilityObservabilityEvidence (C : ControllabilityObservabilityPackage) where
  controllabilityConditionClosed : C.controllabilityCondition
  observabilityConditionClosed : C.observabilityCondition
  kalmanRankConditionClosed : C.kalmanRankCondition
  minimalRealizationClosed : C.minimalRealization

def ControllabilityObservabilityClosed (C : ControllabilityObservabilityPackage) : Prop :=
  C.controllabilityCondition ∧ C.observabilityCondition ∧ C.kalmanRankCondition ∧ C.minimalRealization

theorem controllability_observability_closed_from_evidence (C : ControllabilityObservabilityPackage) (E : ControllabilityObservabilityEvidence C) :
    ControllabilityObservabilityClosed C := by
  exact And.intro E.controllabilityConditionClosed (And.intro E.observabilityConditionClosed (And.intro E.kalmanRankConditionClosed E.minimalRealizationClosed))

end ControlProblemsFunctionalDifferentialEquationsCanonicalLaneLean
end HautevilleHouse