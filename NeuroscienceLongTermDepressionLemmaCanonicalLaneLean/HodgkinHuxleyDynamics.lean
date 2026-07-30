import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotentialDynamics : Prop
  sodiumChannelActivation : Prop
  potassiumChannelActivation : Prop
  leakCurrent : Prop
  actionPotentialThreshold : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialDynamicsClosed : H.membranePotentialDynamics
  sodiumChannelActivationClosed : H.sodiumChannelActivation
  potassiumChannelActivationClosed : H.potassiumChannelActivation
  leakCurrentClosed : H.leakCurrent
  actionPotentialThresholdClosed : H.actionPotentialThreshold

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membranePotentialDynamics ∧ H.sodiumChannelActivation ∧
  H.potassiumChannelActivation ∧ H.leakCurrent ∧ H.actionPotentialThreshold

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialDynamicsClosed
    (And.intro E.sodiumChannelActivationClosed
      (And.intro E.potassiumChannelActivationClosed
        (And.intro E.leakCurrentClosed E.actionPotentialThresholdClosed)))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse