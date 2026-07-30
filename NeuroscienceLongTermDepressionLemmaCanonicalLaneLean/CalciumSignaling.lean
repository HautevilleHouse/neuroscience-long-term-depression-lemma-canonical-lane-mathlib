import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure CalciumSignalingPackage where
  nmdaReceptorActivation : Prop
  voltageGatedCalciumChannels : Prop
  calciumInflux : Prop
  camkiiActivation : Prop
  calcineurinActivation : Prop
  phosphataseActivation : Prop

structure CalciumSignalingEvidence (C : CalciumSignalingPackage) where
  nmdaReceptorActivationClosed : C.nmdaReceptorActivation
  voltageGatedCalciumChannelsClosed : C.voltageGatedCalciumChannels
  calciumInfluxClosed : C.calciumInflux
  camkiiActivationClosed : C.camkiiActivation
  calcineurinActivationClosed : C.calcineurinActivation
  phosphataseActivationClosed : C.phosphataseActivation

def CalciumSignalingClosed (C : CalciumSignalingPackage) : Prop :=
  C.nmdaReceptorActivation ∧ C.voltageGatedCalciumChannels ∧ C.calciumInflux ∧
  C.camkiiActivation ∧ C.calcineurinActivation ∧ C.phosphataseActivation

theorem calcium_signaling_closed_from_evidence
    (C : CalciumSignalingPackage) (E : CalciumSignalingEvidence C) :
    CalciumSignalingClosed C := by
  exact And.intro E.nmdaReceptorActivationClosed
    (And.intro E.voltageGatedCalciumChannelsClosed
      (And.intro E.calciumInfluxClosed
        (And.intro E.camkiiActivationClosed
          (And.intro E.calcineurinActivationClosed
            E.phosphataseActivationClosed))))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse