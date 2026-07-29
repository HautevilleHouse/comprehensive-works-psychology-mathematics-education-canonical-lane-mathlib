import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean

structure StructuralLayer where
  cognitiveDimension : Prop
  affectiveDimension : Prop
  socialDimension : Prop
  culturalDimension : Prop

def FrameworkLayerClosed (L : StructuralLayer) : Prop :=
  L.cognitiveDimension ∧ L.affectiveDimension ∧ L.socialDimension ∧ L.culturalDimension

theorem structural_layer_closed (L : StructuralLayer) : FrameworkLayerClosed L := by
  exact And.intro L.cognitiveDimension (And.intro L.affectiveDimension (And.intro L.socialDimension L.culturalDimension))

end ComprehensiveWorksPsychologyMathematicsEducationCanonicalLaneLean
end HautevilleHouse