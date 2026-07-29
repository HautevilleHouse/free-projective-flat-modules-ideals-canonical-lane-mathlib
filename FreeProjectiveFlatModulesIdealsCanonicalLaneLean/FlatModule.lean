import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.ProjectiveModule

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FlatModulePackage {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} where
  tensorExactness : Prop
  tensoringPreservesInjectivity : Prop
  moduleFlat : Prop

structure FlatModuleEvidence {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} (F : FlatModulePackage P Q) where
  tensorExactnessClosed : F.tensorExactness
  tensoringPreservesInjectivityClosed : F.tensoringPreservesInjectivity
  moduleFlatClosed : F.moduleFlat

def FlatModuleClosed {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} (F : FlatModulePackage P Q) : Prop :=
  F.tensorExactness ∧ F.tensoringPreservesInjectivity ∧ F.moduleFlat

theorem flat_module_closed_from_evidence {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} (F : FlatModulePackage P Q) (E : FlatModuleEvidence F) : FlatModuleClosed F := by
  exact And.intro E.tensorExactnessClosed (And.intro E.tensoringPreservesInjectivityClosed E.moduleFlatClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse