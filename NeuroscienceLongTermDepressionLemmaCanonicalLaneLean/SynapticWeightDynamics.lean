import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure SynapticWeightDynamicsPackage where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  weightTensor : Type w
  hebbianUpdateRule : Prop
  depressionTriggerCondition : Prop
  weightNormalization : Prop
  stabilityUnderPerturbation : Prop

structure SynapticWeightDynamicsEvidence (S : SynapticWeightDynamicsPackage) where
  hebbianUpdateRuleClosed : S.hebbianUpdateRule
  depressionTriggerConditionClosed : S.depressionTriggerCondition
  weightNormalizationClosed : S.weightNormalization
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def SynapticWeightDynamicsClosed (S : SynapticWeightDynamicsPackage) : Prop :=
  S.hebbianUpdateRule ∧ S.depressionTriggerCondition ∧ S.weightNormalization ∧ S.stabilityUnderPerturbation

theorem synaptic_weight_dynamics_closed_from_evidence (S : SynapticWeightDynamicsPackage) (E : SynapticWeightDynamicsEvidence S) : SynapticWeightDynamicsClosed S := by
  exact And.intro E.hebbianUpdateRuleClosed (And.intro E.depressionTriggerConditionClosed (And.intro E.weightNormalizationClosed E.stabilityUnderPerturbationClosed))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse