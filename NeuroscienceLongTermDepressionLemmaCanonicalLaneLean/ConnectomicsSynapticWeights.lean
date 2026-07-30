import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure ConnectomicsSynapticWeights where
  connectome : Type
  synapticWeightMatrix : Type
  structuralPlasticity : Prop
  weightDynamics : Prop
  longTermDepressionEffect : Prop
  structuralPlasticityClosed : structuralPlasticity
  weightDynamicsClosed : weightDynamics
  longTermDepressionEffectClosed : longTermDepressionEffect

structure ConnectomicsEvidence (C : ConnectomicsSynapticWeights) where
  structuralPlasticityOk : C.structuralPlasticity
  weightDynamicsOk : C.weightDynamics
  longTermDepressionEffectOk : C.longTermDepressionEffect

def ConnectomicsClosed (C : ConnectomicsSynapticWeights) : Prop :=
  C.structuralPlasticity ∧ C.weightDynamics ∧ C.longTermDepressionEffect

theorem connectomics_closed_from_evidence (C : ConnectomicsSynapticWeights)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.structuralPlasticityOk
    (And.intro E.weightDynamicsOk E.longTermDepressionEffectOk)

end HautevilleHouse
end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean