import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure SuslinStableRangePackage {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} (H : HorrocksLocalGlobalPackage B) where
  stableRangeTheorem : Prop
  unimodularCompletion : Prop
  stableRangeTheoremTerm : stableRangeTheorem
  unimodularCompletionTerm : unimodularCompletion

structure SuslinStableRangeEvidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} {H : HorrocksLocalGlobalPackage B} (R : SuslinStableRangePackage H) where
  stableRangeTheoremClosed : R.stableRangeTheorem
  unimodularCompletionClosed : R.unimodularCompletion

def SuslinStableRangeClosed {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} {H : HorrocksLocalGlobalPackage B} (R : SuslinStableRangePackage H) : Prop :=
  R.stableRangeTheorem ∧ R.unimodularCompletion

theorem suslin_stable_range_closed_from_evidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} {B : BassCancellationPackage S} {H : HorrocksLocalGlobalPackage B} (R : SuslinStableRangePackage H) (E : SuslinStableRangeEvidence R) : SuslinStableRangeClosed R := by
  exact And.intro E.stableRangeTheoremClosed E.unimodularCompletionClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse