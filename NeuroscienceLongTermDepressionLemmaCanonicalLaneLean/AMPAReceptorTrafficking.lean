import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure AMPAReceptorTraffickingPackage where
  phosphorylation : Prop
  endocytosis : Prop
  surfaceExpression : Prop
  ltdInduction : Prop
  clathrinMediated : Prop
  recyclingEndosome : Prop

structure AMPAReceptorTraffickingEvidence (T : AMPAReceptorTraffickingPackage) where
  phosphorylationClosed : T.phosphorylation
  endocytosisClosed : T.endocytosis
  surfaceExpressionClosed : T.surfaceExpression
  ltdInductionClosed : T.ltdInduction
  clathrinMediatedClosed : T.clathrinMediated
  recyclingEndosomeClosed : T.recyclingEndosome

def AMPAReceptorTraffickingClosed (T : AMPAReceptorTraffickingPackage) : Prop :=
  T.phosphorylation ∧ T.endocytosis ∧ T.surfaceExpression ∧
  T.ltdInduction ∧ T.clathrinMediated ∧ T.recyclingEndosome

theorem ampa_receptor_trafficking_closed_from_evidence
    (T : AMPAReceptorTraffickingPackage) (E : AMPAReceptorTraffickingEvidence T) :
    AMPAReceptorTraffickingClosed T := by
  exact And.intro E.phosphorylationClosed
    (And.intro E.endocytosisClosed
      (And.intro E.surfaceExpressionClosed
        (And.intro E.ltdInductionClosed
          (And.intro E.clathrinMediatedClosed
            E.recyclingEndosomeClosed))))

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse