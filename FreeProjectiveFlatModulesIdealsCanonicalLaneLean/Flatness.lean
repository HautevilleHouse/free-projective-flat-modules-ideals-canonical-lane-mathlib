import canonicalLaneMathlib.AdmissibleClass
import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.FreeProjectiveModules

/-!
# Flatness Package
-/

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FlatnessPackage {P : FreeProjectiveModulePackage} where
  tensorExactness : Prop
  flatnessCharacterization : Prop
  tensorExactnessTerm : tensorExactness
  flatnessCharacterizationTerm : flatnessCharacterization

structure FlatnessEvidence {P : FreeProjectiveModulePackage}
    (F : FlatnessPackage P) where
  tensorExactnessClosed : F.tensorExactness
  flatnessCharacterizationClosed : F.flatnessCharacterization

def FlatnessClosed {P : FreeProjectiveModulePackage}
    (F : FlatnessPackage P) : Prop :=
  F.tensorExactness ∧ F.flatnessCharacterization

theorem flatness_closed_from_evidence
    {P : FreeProjectiveModulePackage} (F : FlatnessPackage P)
    (E : FlatnessEvidence F) : FlatnessClosed F := by
  exact And.intro E.tensorExactnessClosed
    E.flatnessCharacterizationClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse