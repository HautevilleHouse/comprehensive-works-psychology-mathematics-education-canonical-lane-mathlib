import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure MathematicsAchievementPackage where
  conceptualUnderstanding : Prop
  proceduralFluency : Prop
  strategicCompetence : Prop
  adaptiveReasoning : Prop
  productiveDisposition : Prop

structure MathematicsAchievementEvidence (M : MathematicsAchievementPackage) where
  conceptualUnderstandingClosed : M.conceptualUnderstanding
  proceduralFluencyClosed : M.proceduralFluency
  strategicCompetenceClosed : M.strategicCompetence
  adaptiveReasoningClosed : M.adaptiveReasoning
  productiveDispositionClosed : M.productiveDisposition

def MathematicsAchievementClosed (M : MathematicsAchievementPackage) : Prop :=
  M.conceptualUnderstanding ∧ M.proceduralFluency ∧
  M.strategicCompetence ∧ M.adaptiveReasoning ∧ M.productiveDisposition

theorem mathematics_achievement_closed_from_evidence
    (M : MathematicsAchievementPackage) (E : MathematicsAchievementEvidence M) :
    MathematicsAchievementClosed M := by
  exact And.intro E.conceptualUnderstandingClosed
    (And.intro E.proceduralFluencyClosed
      (And.intro E.strategicCompetenceClosed
        (And.intro E.adaptiveReasoningClosed E.productiveDispositionClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
