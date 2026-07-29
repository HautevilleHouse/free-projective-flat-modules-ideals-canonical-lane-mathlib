import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Module.Basic

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FreeProjectiveSpace where
  carrier : Type
  moduleStructure : Module ℤ carrier

structure FreeProjectiveAdmittedObject where
  space : FreeProjectiveSpace
  freeModule : Prop
  projectiveModule : Prop
  flatModule : Prop
  idealClass : Prop
  conclusion : idealClass

structure FreeProjectiveEndgameState where
  object : FreeProjectiveAdmittedObject

def FreeProjectiveWitnessClosed (O : FreeProjectiveAdmittedObject) : Prop :=
  O.idealClass

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
