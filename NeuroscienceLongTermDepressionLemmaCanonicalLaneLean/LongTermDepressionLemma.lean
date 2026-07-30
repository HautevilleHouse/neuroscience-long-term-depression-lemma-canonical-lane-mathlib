import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure LongTermDepressionLemma where
  calciumDynamics : Prop
  phosphataseActivation : Prop
  amparTrafficking : Prop
  synapticScaling : Prop
  calciumDynamicsClosed : calciumDynamics
  phosphataseActivationClosed : phosphataseActivation
  amparTraffickingClosed : amparTrafficking
  synapticScalingClosed : synapticScaling

structure LongTermDepressionEvidence (L : LongTermDepressionLemma) where
  calciumDynamicsOk : L.calciumDynamics
  phosphataseActivationOk : L.phosphataseActivation
  amparTraffickingOk : L.amparTrafficking
  synapticScalingOk : L.synapticScaling

def LongTermDepressionClosed (L : LongTermDepressionLemma) : Prop :=
  L.calciumDynamics ∧ L.phosphataseActivation ∧
  L.amparTrafficking ∧ L.synapticScaling

theorem long_term_depression_closed_from_evidence (L : LongTermDepressionLemma)
    (E : LongTermDepressionEvidence L) : LongTermDepressionClosed L := by
  exact And.intro E.calciumDynamicsOk
    (And.intro E.phosphataseActivationOk
      (And.intro E.amparTraffickingOk E.synapticScalingOk))

end HautevilleHouse
end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean