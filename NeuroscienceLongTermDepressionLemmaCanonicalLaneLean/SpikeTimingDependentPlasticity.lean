import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure SpikeTimingDependentPlasticityPackage where
  preSynapticSpikeTime : Type u
  postSynapticSpikeTime : Type v
  timingWindow : Type w
  stdpFunction : Prop
  depressionWindowWidth : Prop
  frequencyDependence : Prop
  learningRate : Prop

structure SpikeTimingDependentPlasticityEvidence (S : SpikeTimingDependentPlasticityPackage) where
  stdpFunctionClosed : S.stdpFunction
  depressionWindowWidthClosed : S.depressionWindowWidth
  frequencyDependenceClosed : S.frequencyDependence
  learningRateClosed : S.learningRate

def SpikeTimingDependentPlasticityClosed (S : SpikeTimingDependentPlasticityPackage) : Prop :=
  S.stdpFunction ∧ S.depressionWindowWidth ∧ S.frequencyDependence ∧ S.learningRate

theorem spike_timing_dependent_plasticity_closed_from_evidence (S : SpikeTimingDependentPlasticityPackage) (E : SpikeTimingDependentPlasticityEvidence S) : SpikeTimingDependentPlasticityClosed S := by
  exact And.intro E.stdpFunctionClosed (And.intro E.depressionWindowWidthClosed (And.intro E.frequencyDependenceClosed E.learningRateClosed))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse