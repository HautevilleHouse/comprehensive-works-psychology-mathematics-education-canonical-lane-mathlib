import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure CompetencyModel where
  mathematicalCompetency : Prop
  psychologicalCompetency : Prop
  pedagogicalCompetency : Prop
  integratedCompetency : Prop

def CompetencyModelClosed (M : CompetencyModel) : Prop :=
  M.mathematicalCompetency ∧ M.psychologicalCompetency ∧ M.pedagogicalCompetency ∧ M.integratedCompetency

theorem competency_model_closed (M : CompetencyModel) : CompetencyModelClosed M := by
  exact And.intro M.mathematicalCompetency (And.intro M.psychologicalCompetency (And.intro M.pedagogicalCompetency M.integratedCompetency))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse