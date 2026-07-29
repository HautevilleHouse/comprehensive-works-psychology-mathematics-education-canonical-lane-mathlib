import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure FactorAnalysisPackage where
  exploratoryFactorAnalysis : Prop
  confirmatoryFactorAnalysis : Prop
  factorLoadings : Prop
  modelFit : Prop
  rotationMethod : Prop

structure FactorAnalysisEvidence (F : FactorAnalysisPackage) where
  exploratoryFactorAnalysisClosed : F.exploratoryFactorAnalysis
  confirmatoryFactorAnalysisClosed : F.confirmatoryFactorAnalysis
  factorLoadingsClosed : F.factorLoadings
  modelFitClosed : F.modelFit
  rotationMethodClosed : F.rotationMethod

def FactorAnalysisClosed (F : FactorAnalysisPackage) : Prop :=
  F.exploratoryFactorAnalysis ∧ F.confirmatoryFactorAnalysis ∧
  F.factorLoadings ∧ F.modelFit ∧ F.rotationMethod

theorem factor_analysis_closed_from_evidence
    (F : FactorAnalysisPackage) (E : FactorAnalysisEvidence F) :
    FactorAnalysisClosed F := by
  exact And.intro E.exploratoryFactorAnalysisClosed
    (And.intro E.confirmatoryFactorAnalysisClosed
      (And.intro E.factorLoadingsClosed
        (And.intro E.modelFitClosed E.rotationMethodClosed)))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
