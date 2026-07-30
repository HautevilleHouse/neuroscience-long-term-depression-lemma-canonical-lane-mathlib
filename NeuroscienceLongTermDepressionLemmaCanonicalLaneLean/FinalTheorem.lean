import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceLongTermDepressionLemmaCanonicalLaneLean.NeuralFieldModel

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralFieldModelClosed (A.object : NeuralFieldModel)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNeuroscienceLTDLClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_ltdl_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceLTDLClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse
