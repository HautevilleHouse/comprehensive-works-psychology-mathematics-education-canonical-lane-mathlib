import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

def ConstrainedComprehensiveWorksClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_comprehensive_works_endgame (A : AdmissibleClass) :
    ConstrainedComprehensiveWorksClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
