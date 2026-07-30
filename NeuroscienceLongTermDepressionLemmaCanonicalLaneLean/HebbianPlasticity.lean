import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightDynamics : Prop
  prePostCorrelation : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapticWeightDynamicsClosed : H.synapticWeightDynamics
  prePostCorrelationClosed : H.prePostCorrelation
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapticWeightDynamics ∧ H.prePostCorrelation ∧
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.synapticWeightDynamicsClosed
    (And.intro E.prePostCorrelationClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed)))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse