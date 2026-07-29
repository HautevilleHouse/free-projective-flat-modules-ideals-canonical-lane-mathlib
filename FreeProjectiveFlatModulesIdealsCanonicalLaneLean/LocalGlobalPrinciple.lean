import canonicalLaneMathlib.AdmissibleClass
import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.ProjectiveResolution

/-!
# Local-Global Principle Package
-/

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure LocalGlobalPrinciplePackage {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F} where
  locallyFreeImpliesProjective : Prop
  localGlobalEquivalence : Prop
  locallyFreeImpliesProjectiveTerm : locallyFreeImpliesProjective
  localGlobalEquivalenceTerm : localGlobalEquivalence

structure LocalGlobalPrincipleEvidence {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F}
    (L : LocalGlobalPrinciplePackage R) where
  locallyFreeImpliesProjectiveClosed : L.locallyFreeImpliesProjective
  localGlobalEquivalenceClosed : L.localGlobalEquivalence

def LocalGlobalPrincipleClosed {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F}
    (L : LocalGlobalPrinciplePackage R) : Prop :=
  L.locallyFreeImpliesProjective ∧ L.localGlobalEquivalence

theorem local_global_principle_closed_from_evidence
    {P : FreeProjectiveModulePackage} {F : FlatnessPackage P}
    {R : ProjectiveResolutionPackage F} (L : LocalGlobalPrinciplePackage R)
    (E : LocalGlobalPrincipleEvidence L) : LocalGlobalPrincipleClosed L := by
  exact And.intro E.locallyFreeImpliesProjectiveClosed
    E.localGlobalEquivalenceClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse