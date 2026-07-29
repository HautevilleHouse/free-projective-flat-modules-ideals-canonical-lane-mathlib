import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeModuleProjectionPackage where
  ring : Type u
  module : Type v
  basis : Set module
  freeRank : Nat
  basisLinearIndependent : Prop
  basisSpanning : Prop

structure FreeModuleProjectionEvidence (P : FreeModuleProjectionPackage) where
  basisLinearIndependentClosed : P.basisLinearIndependent
  basisSpanningClosed : P.basisSpanning

def FreeModuleProjectionClosed (P : FreeModuleProjectionPackage) : Prop :=
  P.basisLinearIndependent ∧ P.basisSpanning

theorem free_module_projection_closed_from_evidence (P : FreeModuleProjectionPackage) (E : FreeModuleProjectionEvidence P) : FreeModuleProjectionClosed P := by
  exact And.intro E.basisLinearIndependentClosed E.basisSpanningClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse