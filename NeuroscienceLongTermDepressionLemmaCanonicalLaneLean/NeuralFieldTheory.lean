import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure NeuralFieldTheory where
  neuralField : Type
  activationFunction : Type
  connectivityKernel : Type
  fieldDynamics : Prop
  patternFormation : Prop
  fieldDynamicsClosed : fieldDynamics
  patternFormationClosed : patternFormation

structure NeuralFieldEvidence (N : NeuralFieldTheory) where
  fieldDynamicsOk : N.fieldDynamics
  patternFormationOk : N.patternFormation

def NeuralFieldClosed (N : NeuralFieldTheory) : Prop :=
  N.fieldDynamics ∧ N.patternFormation

theorem neural_field_closed_from_evidence (N : NeuralFieldTheory)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.fieldDynamicsOk E.patternFormationOk

end HautevilleHouse
end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean