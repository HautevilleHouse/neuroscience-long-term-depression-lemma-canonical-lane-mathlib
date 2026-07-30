import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure LongTermDepressionDynamics where
  ltpInduction : Prop
  ltdInduction : Prop
  spikeTiming : Prop
  calciumDynamics : Prop
  receptorTrafficking : Prop

structure LongTermDepressionDynamicsEvidence (D : LongTermDepressionDynamics) where
  ltpInductionClosed : D.ltpInduction
  ltdInductionClosed : D.ltdInduction
  spikeTimingClosed : D.spikeTiming
  calciumDynamicsClosed : D.calciumDynamics
  receptorTraffickingClosed : D.receptorTrafficking

def LongTermDepressionDynamicsClosed (D : LongTermDepressionDynamics) : Prop :=
  D.ltpInduction ∧ D.ltdInduction ∧ D.spikeTiming ∧ D.calciumDynamics ∧ D.receptorTrafficking

theorem long_term_depression_dynamics_closed_from_evidence
    (D : LongTermDepressionDynamics) (E : LongTermDepressionDynamicsEvidence D) :
    LongTermDepressionDynamicsClosed D := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.spikeTimingClosed
        (And.intro E.calciumDynamicsClosed E.receptorTraffickingClosed)))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse
