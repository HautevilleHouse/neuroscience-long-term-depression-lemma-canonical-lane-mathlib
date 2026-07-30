import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure PhosphataseCascadePackage where
  calcineurinActivation : Prop
  ppp1Activation : Prop
  dephosphorylation : Prop
  ampaPhosphorylation : Prop
  ltdExpression : Prop

structure PhosphataseCascadeEvidence (P : PhosphataseCascadePackage) where
  calcineurinActivationClosed : P.calcineurinActivation
  ppp1ActivationClosed : P.ppp1Activation
  dephosphorylationClosed : P.dephosphorylation
  ampaPhosphorylationClosed : P.ampaPhosphorylation
  ltdExpressionClosed : P.ltdExpression

def PhosphataseCascadeClosed (P : PhosphataseCascadePackage) : Prop :=
  P.calcineurinActivation ∧ P.ppp1Activation ∧ P.dephosphorylation ∧
  P.ampaPhosphorylation ∧ P.ltdExpression

theorem phosphatase_cascade_closed_from_evidence
    (P : PhosphataseCascadePackage) (E : PhosphataseCascadeEvidence P) :
    PhosphataseCascadeClosed P := by
  exact And.intro E.calcineurinActivationClosed
    (And.intro E.ppp1ActivationClosed
      (And.intro E.dephosphorylationClosed
        (And.intro E.ampaPhosphorylationClosed
          E.ltdExpressionClosed)))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse