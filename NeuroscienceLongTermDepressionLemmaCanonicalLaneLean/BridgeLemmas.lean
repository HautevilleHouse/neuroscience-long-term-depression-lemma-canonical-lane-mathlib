import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def neuroscienceProjection : Projection NeuroscienceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem neuroscience_projection_idempotent (x : NeuroscienceEndgameState) :
    neuroscienceProjection.toFun (neuroscienceProjection.toFun x) = neuroscienceProjection.toFun x := by
  exact neuroscienceProjection.idempotent x

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse