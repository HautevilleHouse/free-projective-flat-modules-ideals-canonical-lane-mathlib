import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.FreeResolutionDecomposition

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure ProjectiveFlatPackage {R : Type u} [CommRing R] (M : Moduleₓ R) where
  projectiveObject : Moduleₓ R
  flatObject : Moduleₓ R
  projectiveResolution : Prop
  flatCriterion : Prop

structure ProjectiveFlatEvidence {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : ProjectiveFlatPackage M) where
  projectiveResolutionClosed : P.projectiveResolution
  flatCriterionClosed : P.flatCriterion

def ProjectiveFlatClosed {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : ProjectiveFlatPackage M) : Prop :=
  P.projectiveResolution ∧ P.flatCriterion

theorem projective_flat_closed_from_evidence
    {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : ProjectiveFlatPackage M) (E : ProjectiveFlatEvidence P) :
    ProjectiveFlatClosed P := by
  exact And.intro E.projectiveResolutionClosed E.flatCriterionClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
