import canonicalLaneMathlib.AdmissibleClass
import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.LocalGlobalPrinciple

/-!
# Serre's Conjecture (Quillen-Suslin) Package
-/

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure SerreConjecturePackage {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F}
    {L : LocalGlobalPrinciplePackage R} where
  polynomialRingCase : Prop
  quillenSuslinTheorem : Prop
  polynomialRingCaseTerm : polynomialRingCase
  quillenSuslinTheoremTerm : quillenSuslinTheorem

structure SerreConjectureEvidence {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F}
    {L : LocalGlobalPrinciplePackage R} (S : SerreConjecturePackage L) where
  polynomialRingCaseClosed : S.polynomialRingCase
  quillenSuslinTheoremClosed : S.quillenSuslinTheorem

def SerreConjectureClosed {P : FreeProjectiveModulePackage}
    {F : FlatnessPackage P} {R : ProjectiveResolutionPackage F}
    {L : LocalGlobalPrinciplePackage R} (S : SerreConjecturePackage L) : Prop :=
  S.polynomialRingCase ∧ S.quillenSuslinTheorem

theorem serre_conjecture_closed_from_evidence
    {P : FreeProjectiveModulePackage} {F : FlatnessPackage P}
    {R : ProjectiveResolutionPackage F} {L : LocalGlobalPrinciplePackage R}
    (S : SerreConjecturePackage L) (E : SerreConjectureEvidence S) :
    SerreConjectureClosed S := by
  exact And.intro E.polynomialRingCaseClosed
    E.quillenSuslinTheoremClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse