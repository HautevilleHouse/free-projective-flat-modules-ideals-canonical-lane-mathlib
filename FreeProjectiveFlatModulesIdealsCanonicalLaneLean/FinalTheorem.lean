import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

def ConstrainedFreeProjectiveFlatIdealsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_projective_flat_ideals_endgame (A : AdmissibleClass) : ConstrainedFreeProjectiveFlatIdealsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse