import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure MetacognitiveStrategiesPackage where
  planning : Prop
  monitoring : Prop
  evaluating : Prop
  selfRegulation : Prop

structure MetacognitiveStrategiesEvidence (M : MetacognitiveStrategiesPackage) where
  planningClosed : M.planning
  monitoringClosed : M.monitoring
  evaluatingClosed : M.evaluating
  selfRegulationClosed : M.selfRegulation

def MetacognitiveStrategiesClosed (M : MetacognitiveStrategiesPackage) : Prop :=
  M.planning ∧ M.monitoring ∧ M.evaluating ∧ M.selfRegulation

theorem metacognitive_strategies_closed_from_evidence (M : MetacognitiveStrategiesPackage)
    (E : MetacognitiveStrategiesEvidence M) : MetacognitiveStrategiesClosed M := by
  exact And.intro E.planningClosed
    (And.intro E.monitoringClosed
      (And.intro E.evaluatingClosed E.selfRegulationClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse