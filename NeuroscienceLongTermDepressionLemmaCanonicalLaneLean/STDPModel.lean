import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure STDPModel where
  preSynapticSpike : Type u
  postSynapticSpike : Type v
  spikeTiming : preSynapticSpike → postSynapticSpike → ℝ
  weightChange : ℝ → ℝ
  depressionThreshold : ℝ
  depressionRule : ∀ (t : ℝ), |t| > depressionThreshold → weightChange (t) < 0

structure STDPEvidence (M : STDPModel) where
  depressionThresholdPositive : M.depressionThreshold > 0
  depressionRuleClosed : M.depressionRule

def STDPClosed (M : STDPModel) : Prop :=
  M.depressionThreshold > 0 ∧ ∀ (t : ℝ), |t| > M.depressionThreshold → M.weightChange (t) < 0

theorem stdp_closed_from_evidence (M : STDPModel) (E : STDPEvidence M) : STDPClosed M :=
  And.intro E.depressionThresholdPositive E.depressionRuleClosed

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse