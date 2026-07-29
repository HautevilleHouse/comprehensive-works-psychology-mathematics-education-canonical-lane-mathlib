import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducation

structure TransferOfLearningPackage where
  nearTransfer : Prop
  farTransfer : Prop
  proceduralTransfer : Prop
  conceptualTransfer : Prop

structure TransferOfLearningEvidence (T : TransferOfLearningPackage) where
  nearTransferClosed : T.nearTransfer
  farTransferClosed : T.farTransfer
  proceduralTransferClosed : T.proceduralTransfer
  conceptualTransferClosed : T.conceptualTransfer

def TransferOfLearningClosed (T : TransferOfLearningPackage) : Prop :=
  T.nearTransfer ∧ T.farTransfer ∧ T.proceduralTransfer ∧ T.conceptualTransfer

theorem transfer_of_learning_closed_from_evidence (T : TransferOfLearningPackage)
    (E : TransferOfLearningEvidence T) : TransferOfLearningClosed T := by
  exact And.intro E.nearTransferClosed
    (And.intro E.farTransferClosed
      (And.intro E.proceduralTransferClosed E.conceptualTransferClosed))

end ComprehensiveWorksPsychologyMathematicsEducation
end HautevilleHouse