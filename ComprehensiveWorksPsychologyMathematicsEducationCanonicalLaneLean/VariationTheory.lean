import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure VariationTheoryPackage where
  patternsOfVariation : Prop
  criticalAspects : Prop
  contrast : Prop
  generalization : Prop
  separation : Prop
  fusion : Prop

structure VariationTheoryEvidence (V : VariationTheoryPackage) where
  patternsOfVariationClosed : V.patternsOfVariation
  criticalAspectsClosed : V.criticalAspects
  contrastClosed : V.contrast
  generalizationClosed : V.generalization
  separationClosed : V.separation
  fusionClosed : V.fusion

def VariationTheoryClosed (V : VariationTheoryPackage) : Prop :=
  V.patternsOfVariation ∧ V.criticalAspects ∧ V.contrast ∧
  V.generalization ∧ V.separation ∧ V.fusion

theorem variation_theory_closed_from_evidence (V : VariationTheoryPackage)
    (E : VariationTheoryEvidence V) : VariationTheoryClosed V := by
  exact And.intro E.patternsOfVariationClosed
    (And.intro E.criticalAspectsClosed
      (And.intro E.contrastClosed
        (And.intro E.generalizationClosed
          (And.intro E.separationClosed E.fusionClosed))))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse