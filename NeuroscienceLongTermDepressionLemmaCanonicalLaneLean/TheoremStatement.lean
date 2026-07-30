import NeuroscienceLongTermDepressionLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure LTDNeuralSystem where
  carrier : Type
  topology : TopologicalSpace carrier

structure LTDAdmittedObject where
  system : LTDNeuralSystem
  hebbianPlasticity : Prop
  depressionInduction : Prop
  longTermDepression : Prop
  conclusion : longTermDepression

def LTDWitnessClosed (O : LTDAdmittedObject) : Prop :=
  O.longTermDepression

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse