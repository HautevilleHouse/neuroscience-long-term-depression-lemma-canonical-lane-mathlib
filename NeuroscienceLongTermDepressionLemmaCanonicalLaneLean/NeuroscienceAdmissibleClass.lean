import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  object : NeuroscienceSpace
  hasLongTermDepressionMechanism : Prop
  connected : Prop
  activityDependent : Prop
  conclusion : hasLongTermDepressionMechanism

structure NeuroscienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroscienceEndgameState where
  object : NeuroscienceAdmittedObject

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.hasLongTermDepressionMechanism

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse