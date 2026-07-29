import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure AssessmentModel where
  formativeAssessment : Prop
  summativeAssessment : Prop
  diagnosticAssessment : Prop
  authenticAssessment : Prop

structure AssessmentEvidence (A : AssessmentModel) where
  formativeAssessmentClosed : A.formativeAssessment
  summativeAssessmentClosed : A.summativeAssessment
  diagnosticAssessmentClosed : A.diagnosticAssessment
  authenticAssessmentClosed : A.authenticAssessment

def AssessmentClosed (A : AssessmentModel) : Prop :=
  A.formativeAssessment ∧ A.summativeAssessment ∧ A.diagnosticAssessment ∧ A.authenticAssessment

theorem assessment_closed_from_evidence (A : AssessmentModel)
    (E : AssessmentEvidence A) : AssessmentClosed A := by
  exact And.intro E.formativeAssessmentClosed
    (And.intro E.summativeAssessmentClosed
      (And.intro E.diagnosticAssessmentClosed E.authenticAssessmentClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse