import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.ModuleTheory

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeResolutionPackage {R : Type u} [CommRing R] (M : Moduleₓ R) where
  freeResolution : List (Moduleₓ R)  -- chain complex of free modules
  projectiveSyzygyFirst : Moduleₓ R
  freeResolutionExact : Prop
  projectiveFirstSyzygy : Prop

structure FreeResolutionEvidence {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : FreeResolutionPackage M) where
  freeResolutionExactClosed : P.freeResolutionExact
  projectiveFirstSyzygyClosed : P.projectiveFirstSyzygy

def FreeResolutionClosed {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : FreeResolutionPackage M) : Prop :=
  P.freeResolutionExact ∧ P.projectiveFirstSyzygy

theorem free_resolution_closed_from_evidence
    {R : Type u} [CommRing R] {M : Moduleₓ R}
    (P : FreeResolutionPackage M) (E : FreeResolutionEvidence P) :
    FreeResolutionClosed P := by
  exact And.intro E.freeResolutionExactClosed E.projectiveFirstSyzygyClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
