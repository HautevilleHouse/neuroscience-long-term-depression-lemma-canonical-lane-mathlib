import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure SynapticAdmittedObject where
  synapse : Type
  presynapticActivity : Prop
  postsynapticActivity : Prop
  calciumInflux : Prop
  phosphataseActivation : Prop
  ampaTrafficking : Prop
  endpoint : Prop
  conclusion : endpoint

structure AdmissibleClass where
  object : SynapticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse