import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FreeProjectiveFlatBridgePackage where
  freeImpliesProjective : Prop
  projectiveImpliesFlat : Prop
  flatOverPIDImpliesFree : Prop

structure FreeProjectiveFlatBridgeEvidence (B : FreeProjectiveFlatBridgePackage) where
  freeImpliesProjectiveClosed : B.freeImpliesProjective
  projectiveImpliesFlatClosed : B.projectiveImpliesFlat
  flatOverPIDImpliesFreeClosed : B.flatOverPIDImpliesFree

def FreeProjectiveFlatBridgeClosed (B : FreeProjectiveFlatBridgePackage) : Prop :=
  B.freeImpliesProjective ∧ B.projectiveImpliesFlat ∧ B.flatOverPIDImpliesFree

theorem free_projective_flat_bridge_closed_from_evidence
    (B : FreeProjectiveFlatBridgePackage) (E : FreeProjectiveFlatBridgeEvidence B) :
    FreeProjectiveFlatBridgeClosed B := by
  exact And.intro E.freeImpliesProjectiveClosed
    (And.intro E.projectiveImpliesFlatClosed E.flatOverPIDImpliesFreeClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse