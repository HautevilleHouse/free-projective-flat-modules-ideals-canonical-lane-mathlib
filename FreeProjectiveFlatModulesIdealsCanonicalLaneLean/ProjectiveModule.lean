import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.ModuleProjection

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure ProjectiveModulePackage {P : FreeModuleProjectionPackage} where
  summand : Type w
  directSummandInclusion : P.module → summand
  directSummandProjection : summand → P.module
  idIsProjection : (directSummandProjection ∘ directSummandInclusion) = id
  summandIsDirect : Prop

structure ProjectiveModuleEvidence {P : FreeModuleProjectionPackage} (Q : ProjectiveModulePackage P) where
  idIsProjectionClosed : Q.idIsProjection
  summandIsDirectClosed : Q.summandIsDirect

def ProjectiveModuleClosed {P : FreeModuleProjectionPackage} (Q : ProjectiveModulePackage P) : Prop :=
  Q.idIsProjection ∧ Q.summandIsDirect

theorem projective_module_closed_from_evidence {P : FreeModuleProjectionPackage} (Q : ProjectiveModulePackage P) (E : ProjectiveModuleEvidence Q) : ProjectiveModuleClosed Q := by
  exact And.intro E.idIsProjectionClosed E.summandIsDirectClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse