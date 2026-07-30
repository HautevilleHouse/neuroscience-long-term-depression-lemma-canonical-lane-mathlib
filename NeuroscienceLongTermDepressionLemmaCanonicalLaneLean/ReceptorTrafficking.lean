import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure ReceptorTraffickingPackage where
  synapse : Type u
  ampaReceptorCount : synapse → ℕ
  nmdaReceptorActivation : synapse → Prop
  internalizationRate : ℝ
  ltdExpression : Prop

structure ReceptorTraffickingEvidence (R : ReceptorTraffickingPackage) where
  ampaDownregulation : ∀ (s : R.synapse), R.nmdaReceptorActivation s → R.ampaReceptorCount s < R.ampaReceptorCount s + 1
  internalizationRatePositive : R.internalizationRate > 0
  ltdExpressionClosed : R.ltdExpression

def ReceptorTraffickingClosed (R : ReceptorTraffickingPackage) : Prop :=
  (∀ (s : R.synapse), R.nmdaReceptorActivation s → R.ampaReceptorCount s < R.ampaReceptorCount s + 1) ∧
  R.internalizationRate > 0 ∧
  R.ltdExpression

theorem receptor_trafficking_closed_from_evidence (R : ReceptorTraffickingPackage) (E : ReceptorTraffickingEvidence R) : ReceptorTraffickingClosed R :=
  And.intro E.ampaDownregulation (And.intro E.internalizationRatePositive E.ltdExpressionClosed)

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse