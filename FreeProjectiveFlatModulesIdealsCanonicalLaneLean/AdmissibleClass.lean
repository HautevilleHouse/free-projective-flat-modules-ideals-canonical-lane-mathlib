import FreeProjectiveFlatModulesIdealsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure AdmissibleClass where
  object : FreeProjectiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeProjectiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
