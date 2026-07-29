import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse