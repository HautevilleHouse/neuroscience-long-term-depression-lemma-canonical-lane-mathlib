import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure NeuralFieldModel where
  membranePotential : Type u
  synapticWeights : Type v
  fieldEquation : Prop
  patternFormation : Prop
  stabilityCondition : Prop

structure NeuralFieldModelEvidence (M : NeuralFieldModel) where
  fieldEquationClosed : M.fieldEquation
  patternFormationClosed : M.patternFormation
  stabilityConditionClosed : M.stabilityCondition

def NeuralFieldModelClosed (M : NeuralFieldModel) : Prop :=
  M.fieldEquation ∧ M.patternFormation ∧ M.stabilityCondition

theorem neural_field_model_closed_from_evidence (M : NeuralFieldModel)
    (E : NeuralFieldModelEvidence M) : NeuralFieldModelClosed M := by
  exact And.intro E.fieldEquationClosed (And.intro E.patternFormationClosed E.stabilityConditionClosed)

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse
