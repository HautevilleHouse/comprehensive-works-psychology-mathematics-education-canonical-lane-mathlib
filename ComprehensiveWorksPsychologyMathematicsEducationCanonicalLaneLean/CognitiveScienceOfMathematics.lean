import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure CognitiveScienceOfMathematicsPackage where
  numberSense : Prop
  spatialThinking : Prop
  mathematicalAbstraction : Prop
  problemSolvingStrategies : Prop
  affectAndBeliefs : Prop
  conceptualChange : Prop
  cognitiveDevelopment : Prop
  neurocognitiveBasis : Prop

structure CognitiveScienceOfMathematicsEvidence (C : CognitiveScienceOfMathematicsPackage) where
  numberSenseClosed : C.numberSense
  spatialThinkingClosed : C.spatialThinking
  mathematicalAbstractionClosed : C.mathematicalAbstraction
  problemSolvingStrategiesClosed : C.problemSolvingStrategies
  affectAndBeliefsClosed : C.affectAndBeliefs
  conceptualChangeClosed : C.conceptualChange
  cognitiveDevelopmentClosed : C.cognitiveDevelopment
  neurocognitiveBasisClosed : C.neurocognitiveBasis

def CognitiveScienceOfMathematicsClosed (C : CognitiveScienceOfMathematicsPackage) : Prop :=
  C.numberSense ∧ C.spatialThinking ∧ C.mathematicalAbstraction ∧
  C.problemSolvingStrategies ∧ C.affectAndBeliefs ∧ C.conceptualChange ∧
  C.cognitiveDevelopment ∧ C.neurocognitiveBasis

theorem cognitive_science_of_mathematics_closed_from_evidence
    (C : CognitiveScienceOfMathematicsPackage)
    (E : CognitiveScienceOfMathematicsEvidence C) :
    CognitiveScienceOfMathematicsClosed C := by
  exact And.intro E.numberSenseClosed
    (And.intro E.spatialThinkingClosed
      (And.intro E.mathematicalAbstractionClosed
        (And.intro E.problemSolvingStrategiesClosed
          (And.intro E.affectAndBeliefsClosed
            (And.intro E.conceptualChangeClosed
              (And.intro E.cognitiveDevelopmentClosed E.neurocognitiveBasisClosed))))))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse