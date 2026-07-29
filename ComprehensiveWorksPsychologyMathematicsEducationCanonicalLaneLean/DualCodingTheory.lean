import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure DualCodingTheoryPackage where
  verbalChannel : Prop
  nonverbalChannel : Prop
  referentialConnections : Prop
  multimediaLearningPrinciples : Prop
  empiricalEvidence : Prop

structure DualCodingTheoryEvidence (D : DualCodingTheoryPackage) where
  verbalChannelClosed : D.verbalChannel
  nonverbalChannelClosed : D.nonverbalChannel
  referentialConnectionsClosed : D.referentialConnections
  multimediaLearningPrinciplesClosed : D.multimediaLearningPrinciples
  empiricalEvidenceClosed : D.empiricalEvidence

def DualCodingTheoryClosed (D : DualCodingTheoryPackage) : Prop :=
  D.verbalChannel ∧ D.nonverbalChannel ∧ D.referentialConnections ∧
  D.multimediaLearningPrinciples ∧ D.empiricalEvidence

theorem dual_coding_theory_closed_from_evidence (D : DualCodingTheoryPackage)
    (E : DualCodingTheoryEvidence D) : DualCodingTheoryClosed D := by
  exact And.intro E.verbalChannelClosed
    (And.intro E.nonverbalChannelClosed
      (And.intro E.referentialConnectionsClosed
        (And.intro E.multimediaLearningPrinciplesClosed E.empiricalEvidenceClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse