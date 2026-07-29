import canonicalLaneMathlib.AdmissibleClass
import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.Flatness

/-!
# Projective Resolution Package
-/

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure ProjectiveResolutionPackage {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} where
  resolutionChain : Type u
  augmentationExists : Prop
  projectiveAtEachStep : Prop
  augmentationExistsTerm : augmentationExists
  projectiveAtEachStepTerm : projectiveAtEachStep

structure ProjectiveResolutionEvidence {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} (R : ProjectiveResolutionPackage F) where
  augmentationExistsClosed : R.augmentationExists
  projectiveAtEachStepClosed : R.projectiveAtEachStep

def ProjectiveResolutionClosed {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} (R : ProjectiveResolutionPackage F) : Prop :=
  R.augmentationExists ∧ R.projectiveAtEachStep

theorem projective_resolution_closed_from_evidence
    {P : FreeProjectiveModulePackage} {F : FlatnessPackage P}
    (R : ProjectiveResolutionPackage F) (E : ProjectiveResolutionEvidence R) :
    ProjectiveResolutionClosed R := by
  exact And.intro E.augmentationExistsClosed
    E.projectiveAtEachStepClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse