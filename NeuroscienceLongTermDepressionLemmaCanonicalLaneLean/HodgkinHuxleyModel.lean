import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type
  ionicCurrents : Type
  gatingVariables : Type
  differentialEquations : Prop
  actionPotentialGeneration : Prop
  membranePotentialClosed : membranePotential
  ionicCurrentsClosed : ionicCurrents
  gatingVariablesClosed : gatingVariables
  differentialEquationsClosed : differentialEquations
  actionPotentialGenerationClosed : actionPotentialGeneration

structure HodgkinHuxleyEvidence (M : HodgkinHuxleyModel) where
  differentialEquationsOk : M.differentialEquations
  actionPotentialGenerationOk : M.actionPotentialGeneration

def HodgkinHuxleyClosed (M : HodgkinHuxleyModel) : Prop :=
  M.differentialEquations ∧ M.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (M : HodgkinHuxleyModel)
    (E : HodgkinHuxleyEvidence M) : HodgkinHuxleyClosed M := by
  exact And.intro E.differentialEquationsOk E.actionPotentialGenerationOk

end HautevilleHouse
end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean