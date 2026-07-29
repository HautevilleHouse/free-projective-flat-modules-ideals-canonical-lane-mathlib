import canonicalLaneMathlib.AdmissibleClass

/-!
# Free Projective Modules Package
-/

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeProjectiveModulePackage where
  baseRing : Type u
  module : Type v
  basisExists : Prop
  projective : Prop
  free : Prop
  basisExistsTerm : basisExists
  projectiveTerm : projective
  freeTerm : free

structure FreeProjectiveModuleEvidence (P : FreeProjectiveModulePackage) where
  basisExistsClosed : P.basisExists
  projectiveClosed : P.projective
  freeClosed : P.free

def FreeProjectiveModuleClosed (P : FreeProjectiveModulePackage) : Prop :=
  P.basisExists ∧ P.projective ∧ P.free

theorem free_projective_module_closed_from_evidence
    (P : FreeProjectiveModulePackage) (E : FreeProjectiveModuleEvidence P) :
    FreeProjectiveModuleClosed P := by
  exact And.intro E.basisExistsClosed
    (And.intro E.projectiveClosed E.freeClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse