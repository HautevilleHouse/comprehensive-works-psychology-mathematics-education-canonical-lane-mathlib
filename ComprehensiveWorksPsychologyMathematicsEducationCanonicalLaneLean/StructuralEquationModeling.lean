import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure StructuralEquationModelingPackage where
  latentVariables : Prop
  measurementModel : Prop
  structuralModel : Prop
  parameterEstimates : Prop
  modelIdentification : Prop
  goodnessOfFit : Prop

structure StructuralEquationModelingEvidence (S : StructuralEquationModelingPackage) where
  latentVariablesClosed : S.latentVariables
  measurementModelClosed : S.measurementModel
  structuralModelClosed : S.structuralModel
  parameterEstimatesClosed : S.parameterEstimates
  modelIdentificationClosed : S.modelIdentification
  goodnessOfFitClosed : S.goodnessOfFit

def StructuralEquationModelingClosed (S : StructuralEquationModelingPackage) : Prop :=
  S.latentVariables ∧ S.measurementModel ∧ S.structuralModel ∧
  S.parameterEstimates ∧ S.modelIdentification ∧ S.goodnessOfFit

theorem structural_equation_modeling_closed_from_evidence
    (S : StructuralEquationModelingPackage) (E : StructuralEquationModelingEvidence S) :
    StructuralEquationModelingClosed S := by
  exact And.intro E.latentVariablesClosed
    (And.intro E.measurementModelClosed
      (And.intro E.structuralModelClosed
        (And.intro E.parameterEstimatesClosed
          (And.intro E.modelIdentificationClosed E.goodnessOfFitClosed))))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse
