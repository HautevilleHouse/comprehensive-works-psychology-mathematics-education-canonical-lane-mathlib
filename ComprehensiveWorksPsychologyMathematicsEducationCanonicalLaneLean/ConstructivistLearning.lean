import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure ConstructivistLearningPackage where
  priorKnowledgeActivation : Prop
  guidedDiscovery : Prop
  reflection : Prop
  socialInteraction : Prop

structure ConstructivistLearningEvidence (C : ConstructivistLearningPackage) where
  priorKnowledgeActivationClosed : C.priorKnowledgeActivation
  guidedDiscoveryClosed : C.guidedDiscovery
  reflectionClosed : C.reflection
  socialInteractionClosed : C.socialInteraction

def ConstructivistLearningClosed (C : ConstructivistLearningPackage) : Prop :=
  C.priorKnowledgeActivation ∧ C.guidedDiscovery ∧ C.reflection ∧ C.socialInteraction

theorem constructivist_learning_closed_from_evidence (C : ConstructivistLearningPackage)
    (E : ConstructivistLearningEvidence C) : ConstructivistLearningClosed C := by
  exact And.intro E.priorKnowledgeActivationClosed
    (And.intro E.guidedDiscoveryClosed
      (And.intro E.reflectionClosed E.socialInteractionClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse