import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure SynapticScalingPackage where
  synapse : Type u
  initialWeight : synapse → ℝ
  weightAfterLTD : synapse → ℝ
  scalingFactor : ℝ
  homeostasisRule : Prop

structure SynapticScalingEvidence (S : SynapticScalingPackage) where
  weightDecrease : ∀ (s : S.synapse), S.weightAfterLTD s < S.initialWeight s
  scalingFactorPositive : S.scalingFactor > 0
  homeostasisRuleClosed : S.homeostasisRule

def SynapticScalingClosed (S : SynapticScalingPackage) : Prop :=
  (∀ (s : S.synapse), S.weightAfterLTD s < S.initialWeight s) ∧
  S.scalingFactor > 0 ∧
  S.homeostasisRule

theorem synaptic_scaling_closed_from_evidence (S : SynapticScalingPackage) (E : SynapticScalingEvidence S) : SynapticScalingClosed S :=
  And.intro E.weightDecrease (And.intro E.scalingFactorPositive E.homeostasisRuleClosed)

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse