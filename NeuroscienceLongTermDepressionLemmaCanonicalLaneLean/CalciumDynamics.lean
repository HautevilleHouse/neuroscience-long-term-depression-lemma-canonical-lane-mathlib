import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionLemmaCanonicalLaneLean

structure CalciumDynamicsPackage where
  cellMembrane : Type u
  calciumConcentration : cellMembrane → ℝ
  bindingProtein : Type v
  phosphataseActivation : ℝ → Prop
  ltdInductionThreshold : ℝ

structure CalciumDynamicsEvidence (C : CalciumDynamicsPackage) where
  calciumRiseSufficient : ∀ (x : C.cellMembrane), C.calciumConcentration x ≥ C.ltdInductionThreshold → C.phosphataseActivation (C.calciumConcentration x)
  thresholdPositive : C.ltdInductionThreshold > 0

def CalciumDynamicsClosed (C : CalciumDynamicsPackage) : Prop :=
  (∀ (x : C.cellMembrane), C.calciumConcentration x ≥ C.ltdInductionThreshold → C.phosphataseActivation (C.calciumConcentration x)) ∧
  C.ltdInductionThreshold > 0

theorem calcium_dynamics_closed_from_evidence (C : CalciumDynamicsPackage) (E : CalciumDynamicsEvidence C) : CalciumDynamicsClosed C :=
  And.intro E.calciumRiseSufficient E.thresholdPositive

end NeuroscienceLongTermDepressionLemmaCanonicalLaneLean
end HautevilleHouse