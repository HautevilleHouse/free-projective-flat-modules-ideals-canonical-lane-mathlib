import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Module.Projective
import Mathlib.Algebra.Module.Flat
import Mathlib.Algebra.Module.Free

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeProjectiveModule (R : Type u) [CommRing R] where
  carrier : Type v
  module : Module R carrier
  free : Module.Free R carrier
  projective : Module.Projective R carrier
  flat : Module.Flat R carrier

structure FreeProjectiveAdmittedObject where
  ring : Type u
  ringCommRing : CommRing ring
  module : FreeProjectiveModule ring
  ideal : Ideal ring
  isFreeAsIdeal : Module.Free ring ideal
  conclusion : isFreeAsIdeal

def FreeProjectiveWitnessClosed (O : FreeProjectiveAdmittedObject) : Prop :=
  O.isFreeAsIdeal

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
