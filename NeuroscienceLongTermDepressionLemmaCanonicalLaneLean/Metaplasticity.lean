import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure MetaplasticityPackage where
  synapse : Type u
  priorActivity : synapse → ℕ
  modificationThreshold : ℝ
  ltdInducibility : synapse → Prop
  slidingThresholdRule : ∀ (s : synapse), priorActivity s ≥ 10 → modificationThreshold < modificationThreshold

structure MetaplasticityEvidence (M : MetaplasticityPackage) where
  thresholdSliding : M.slidingThresholdRule
  ltdInducibilityConstraint : ∀ (s : M.synapse), M.ltdInducibility s ↔ M.priorActivity s ≥ 5

def MetaplasticityClosed (M : MetaplasticityPackage) : Prop :=
  M.slidingThresholdRule ∧ (∀ (s : M.synapse), M.ltdInducibility s ↔ M.priorActivity s ≥ 5)

theorem metaplasticity_closed_from_evidence (M : MetaplasticityPackage) (E : MetaplasticityEvidence M) : MetaplasticityClosed M :=
  And.intro E.thresholdSliding E.ltdInducibilityConstraint

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse