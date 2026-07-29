import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeResolutionPackage where
  module : Type u
  ring : Type v
  projectiveResolution : Type w
  finiteRankFreeModules : Prop
  resolutionExactness : Prop
  projectiveModulesExist : Prop

structure FreeResolutionEvidence (F : FreeResolutionPackage) where
  finiteRankFreeModulesClosed : F.finiteRankFreeModules
  resolutionExactnessClosed : F.resolutionExactness
  projectiveModulesExistClosed : F.projectiveModulesExist

def FreeResolutionClosed (F : FreeResolutionPackage) : Prop :=
  F.finiteRankFreeModules ∧ F.resolutionExactness ∧ F.projectiveModulesExist

theorem free_resolution_closed_from_evidence (F : FreeResolutionPackage)
    (E : FreeResolutionEvidence F) : FreeResolutionClosed F := by
  exact And.intro E.finiteRankFreeModulesClosed
    (And.intro E.resolutionExactnessClosed E.projectiveModulesExistClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse