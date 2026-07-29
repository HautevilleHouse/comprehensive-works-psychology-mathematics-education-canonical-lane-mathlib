import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure SelfDeterminationTheoryPackage where
  autonomy : Prop
  competence : Prop
  relatedness : Prop
  intrinsicMotivation : Prop
  extrinsicMotivation : Prop

structure SelfDeterminationTheoryEvidence (S : SelfDeterminationTheoryPackage) where
  autonomyClosed : S.autonomy
  competenceClosed : S.competence
  relatednessClosed : S.relatedness
  intrinsicMotivationClosed : S.intrinsicMotivation
  extrinsicMotivationClosed : S.extrinsicMotivation

def SelfDeterminationTheoryClosed (S : SelfDeterminationTheoryPackage) : Prop :=
  S.autonomy ∧ S.competence ∧ S.relatedness ∧ S.intrinsicMotivation ∧ S.extrinsicMotivation

theorem self_determination_theory_closed_from_evidence
    (S : SelfDeterminationTheoryPackage) (E : SelfDeterminationTheoryEvidence S) :
    SelfDeterminationTheoryClosed S := by
  exact And.intro E.autonomyClosed
    (And.intro E.competenceClosed
      (And.intro E.relatednessClosed
        (And.intro E.intrinsicMotivationClosed E.extrinsicMotivationClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
