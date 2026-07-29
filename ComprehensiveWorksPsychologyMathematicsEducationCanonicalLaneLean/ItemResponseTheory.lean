import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure ItemResponseTheoryPackage where
  itemDifficulty : Prop
  itemDiscrimination : Prop
  guessingParameter : Prop
  latentAbility : Prop
  itemCharacteristicCurve : Prop
  informationFunction : Prop

structure ItemResponseTheoryEvidence (I : ItemResponseTheoryPackage) where
  itemDifficultyClosed : I.itemDifficulty
  itemDiscriminationClosed : I.itemDiscrimination
  guessingParameterClosed : I.guessingParameter
  latentAbilityClosed : I.latentAbility
  itemCharacteristicCurveClosed : I.itemCharacteristicCurve
  informationFunctionClosed : I.informationFunction

def ItemResponseTheoryClosed (I : ItemResponseTheoryPackage) : Prop :=
  I.itemDifficulty ∧ I.itemDiscrimination ∧ I.guessingParameter ∧
  I.latentAbility ∧ I.itemCharacteristicCurve ∧ I.informationFunction

theorem item_response_theory_closed_from_evidence
    (I : ItemResponseTheoryPackage) (E : ItemResponseTheoryEvidence I) :
    ItemResponseTheoryClosed I := by
  exact And.intro E.itemDifficultyClosed
    (And.intro E.itemDiscriminationClosed
      (And.intro E.guessingParameterClosed
        (And.intro E.latentAbilityClosed
          (And.intro E.itemCharacteristicCurveClosed E.informationFunctionClosed))))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
