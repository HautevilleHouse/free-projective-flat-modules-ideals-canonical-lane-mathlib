import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def freeProjectiveProjection : Projection FreeProjectiveEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem free_projective_projection_idempotent (x : FreeProjectiveEndgameState) :
    freeProjectiveProjection.toFun (freeProjectiveProjection.toFun x) = freeProjectiveProjection.toFun x := by
  exact freeProjectiveProjection.idempotent x

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
