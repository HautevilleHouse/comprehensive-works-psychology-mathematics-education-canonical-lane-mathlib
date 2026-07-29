import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure MotivationTheoryPackage where
  intrinsicMotivation : Prop
  extrinsicMotivation : Prop
  selfEfficacy : Prop
  achievementGoalOrientation : Prop

structure MotivationTheoryEvidence (M : MotivationTheoryPackage) where
  intrinsicMotivationClosed : M.intrinsicMotivation
  extrinsicMotivationClosed : M.extrinsicMotivation
  selfEfficacyClosed : M.selfEfficacy
  achievementGoalOrientationClosed : M.achievementGoalOrientation

def MotivationTheoryClosed (M : MotivationTheoryPackage) : Prop :=
  M.intrinsicMotivation ∧ M.extrinsicMotivation ∧ M.selfEfficacy ∧ M.achievementGoalOrientation

theorem motivation_theory_closed_from_evidence (M : MotivationTheoryPackage)
    (E : MotivationTheoryEvidence M) : MotivationTheoryClosed M := by
  exact And.intro E.intrinsicMotivationClosed
    (And.intro E.extrinsicMotivationClosed
      (And.intro E.selfEfficacyClosed E.achievementGoalOrientationClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse