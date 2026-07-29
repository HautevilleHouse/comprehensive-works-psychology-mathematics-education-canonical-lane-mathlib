import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure CognitiveLoadModel where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  totalCapacity : Prop

structure CognitiveLoadEvidence (M : CognitiveLoadModel) where
  intrinsicLoadClosed : M.intrinsicLoad
  extraneousLoadClosed : M.extraneousLoad
  germaneLoadClosed : M.germaneLoad
  totalCapacityClosed : M.totalCapacity

def CognitiveLoadClosed (M : CognitiveLoadModel) : Prop :=
  M.intrinsicLoad ∧ M.extraneousLoad ∧ M.germaneLoad ∧ M.totalCapacity

theorem cognitive_load_closed_from_evidence (M : CognitiveLoadModel)
    (E : CognitiveLoadEvidence M) : CognitiveLoadClosed M := by
  exact And.intro E.intrinsicLoadClosed
    (And.intro E.extraneousLoadClosed
      (And.intro E.germaneLoadClosed E.totalCapacityClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse