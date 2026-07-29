import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Module.Syzygy

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure SyzygyPackage where
  module : Type u
  ring : Type v
  ringCommRing : CommRing ring
  moduleModule : Module ring module
  syzygyModule : Type w
  syzygyModuleModule : Module ring syzygyModule
  syzygyFree : Prop
  syzygyFlat : Prop
  syzygyFreeClosed : syzygyFree
  syzygyFlatClosed : syzygyFlat

structure SyzygyEvidence (S : SyzygyPackage) where
  syzygyFreeClosed : S.syzygyFree
  syzygyFlatClosed : S.syzygyFlat

def SyzygyClosed (S : SyzygyPackage) : Prop :=
  S.syzygyFree ∧ S.syzygyFlat

theorem syzygy_closed_from_evidence (S : SyzygyPackage) (E : SyzygyEvidence S) :
    SyzygyClosed S := by
  exact And.intro E.syzygyFreeClosed E.syzygyFlatClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
