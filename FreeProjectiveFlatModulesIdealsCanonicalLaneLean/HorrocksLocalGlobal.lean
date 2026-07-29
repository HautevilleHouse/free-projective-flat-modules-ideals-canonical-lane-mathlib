import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure HorrocksLocalGlobalPackage {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} (B : BassCancellationPackage S) where
  localGlobalPrinciple : Prop
  localFreeImpliesFree : Prop
  localGlobalPrincipleTerm : localGlobalPrinciple
  localFreeImpliesFreeTerm : localFreeImpliesFree

structure HorrocksLocalGlobalEvidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} (H : HorrocksLocalGlobalPackage B) where
  localGlobalPrincipleClosed : H.localGlobalPrinciple
  localFreeImpliesFreeClosed : H.localFreeImpliesFree

def HorrocksLocalGlobalClosed {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} (H : HorrocksLocalGlobalPackage B) : Prop :=
  H.localGlobalPrinciple ∧ H.localFreeImpliesFree

theorem horrocks_local_global_closed_from_evidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} (H : HorrocksLocalGlobalPackage B) (E : HorrocksLocalGlobalEvidence H) : HorrocksLocalGlobalClosed H := by
  exact And.intro E.localGlobalPrincipleClosed E.localFreeImpliesFreeClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse