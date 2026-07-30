import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure HebbianLearningRule where
  synapticWeight : Type
  presynapticActivity : Type
  postsynapticActivity : Type
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  hebbianPlasticity : Prop
  spikeTimingDependenceClosed : spikeTimingDependence
  longTermPotentiationClosed : longTermPotentiation
  longTermDepressionClosed : longTermDepression
  hebbianPlasticityClosed : hebbianPlasticity

structure HebbianLearningEvidence (H : HebbianLearningRule) where
  spikeTimingDependenceOk : H.spikeTimingDependence
  longTermPotentiationOk : H.longTermPotentiation
  longTermDepressionOk : H.longTermDepression
  hebbianPlasticityOk : H.hebbianPlasticity

def HebbianLearningClosed (H : HebbianLearningRule) : Prop :=
  H.spikeTimingDependence ∧ H.longTermPotentiation ∧
  H.longTermDepression ∧ H.hebbianPlasticity

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningRule)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.spikeTimingDependenceOk
    (And.intro E.longTermPotentiationOk
      (And.intro E.longTermDepressionOk E.hebbianPlasticityOk))

end HautevilleHouse
end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean