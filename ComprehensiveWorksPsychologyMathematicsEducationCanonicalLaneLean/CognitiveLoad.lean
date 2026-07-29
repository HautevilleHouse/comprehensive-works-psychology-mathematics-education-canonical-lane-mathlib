import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure CognitiveLoadPackage (A : AdmissibleClass) where
  intrinsicLoadFactors : Prop
  extraneousLoadMinimized : Prop
  germaneLoadPromoted : Prop
  splitAttentionEffect : Prop
  modalityEffect : Prop

structure CognitiveLoadEvidence {A : AdmissibleClass} (P : CognitiveLoadPackage A) where
  intrinsicLoadFactorsClosed : P.intrinsicLoadFactors
  extraneousLoadMinimizedClosed : P.extraneousLoadMinimized
  germaneLoadPromotedClosed : P.germaneLoadPromoted
  splitAttentionEffectClosed : P.splitAttentionEffect
  modalityEffectClosed : P.modalityEffect

def CognitiveLoadClosed {A : AdmissibleClass} (P : CognitiveLoadPackage A) : Prop :=
  P.intrinsicLoadFactors ∧ P.extraneousLoadMinimized ∧ P.germaneLoadPromoted ∧ P.splitAttentionEffect ∧ P.modalityEffect

theorem cognitive_load_closed_from_evidence
    {A : AdmissibleClass} (P : CognitiveLoadPackage A) (E : CognitiveLoadEvidence P) :
    CognitiveLoadClosed P := by
  exact And.intro E.intrinsicLoadFactorsClosed (And.intro E.extraneousLoadMinimizedClosed (And.intro E.germaneLoadPromotedClosed (And.intro E.splitAttentionEffectClosed E.modalityEffectClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse