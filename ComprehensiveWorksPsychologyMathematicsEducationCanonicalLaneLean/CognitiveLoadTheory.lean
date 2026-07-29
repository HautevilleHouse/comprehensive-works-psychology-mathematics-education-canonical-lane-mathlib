import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure CognitiveLoadTheoryPackage where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  measurementInstruments : Prop
  instructionalDesignPrinciples : Prop

structure CognitiveLoadTheoryEvidence (C : CognitiveLoadTheoryPackage) where
  intrinsicLoadClosed : C.intrinsicLoad
  extraneousLoadClosed : C.extraneousLoad
  germaneLoadClosed : C.germaneLoad
  measurementInstrumentsClosed : C.measurementInstruments
  instructionalDesignPrinciplesClosed : C.instructionalDesignPrinciples

def CognitiveLoadTheoryClosed (C : CognitiveLoadTheoryPackage) : Prop :=
  C.intrinsicLoad ∧ C.extraneousLoad ∧ C.germaneLoad ∧
  C.measurementInstruments ∧ C.instructionalDesignPrinciples

theorem cognitive_load_theory_closed_from_evidence (C : CognitiveLoadTheoryPackage)
    (E : CognitiveLoadTheoryEvidence C) : CognitiveLoadTheoryClosed C := by
  exact And.intro E.intrinsicLoadClosed
    (And.intro E.extraneousLoadClosed
      (And.intro E.germaneLoadClosed
        (And.intro E.measurementInstrumentsClosed E.instructionalDesignPrinciplesClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse