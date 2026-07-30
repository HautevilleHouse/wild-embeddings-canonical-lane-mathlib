import WildEmbeddingsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WildEmbeddingsCanonicalLaneLean

structure CrumpledSpaceStructure where
  crumpledCube : Type
  hornedSphere : Type
  alexanderSphere : Type
  crumpledCubeTopology : TopologicalSpace crumpledCube
  hornedSphereTopology : TopologicalSpace hornedSphere
  alexanderSphereTopology : TopologicalSpace alexanderSphere
  wildnessCountable : Prop
  decompositionProperty : Prop

structure CrumpledSpaceEvidence (C : CrumpledSpaceStructure) where
  wildnessCountableClosed : C.wildnessCountable
  decompositionPropertyClosed : C.decompositionProperty

def CrumpledSpaceClosed (C : CrumpledSpaceStructure) : Prop :=
  C.wildnessCountable ∧ C.decompositionProperty

theorem crumpled_space_closed_from_evidence (C : CrumpledSpaceStructure) (E : CrumpledSpaceEvidence C) :
    CrumpledSpaceClosed C := by
  exact And.intro E.wildnessCountableClosed E.decompositionPropertyClosed

end WildEmbeddingsCanonicalLaneLean
end HautevilleHouse
