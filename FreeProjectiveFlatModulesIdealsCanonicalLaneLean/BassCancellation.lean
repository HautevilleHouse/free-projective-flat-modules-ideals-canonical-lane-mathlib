import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure BassCancellationPackage {Q : QuillenSuslinPackage} (S : SerreSplittingPackage Q) where
  cancellationTheorem : Prop
  stableRankCondition : Prop
  cancellationTheoremTerm : cancellationTheorem
  stableRankConditionTerm : stableRankCondition

structure BassCancellationEvidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} (B : BassCancellationPackage S) where
  cancellationTheoremClosed : B.cancellationTheorem
  stableRankConditionClosed : B.stableRankCondition

def BassCancellationClosed {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} (B : BassCancellationPackage S) : Prop :=
  B.cancellationTheorem ∧ B.stableRankCondition

theorem bass_cancellation_closed_from_evidence {Q : QuillenSuslinPackage} {S : SerreSplittingPackage Q} (B : BassCancellationPackage S) (E : BassCancellationEvidence B) : BassCancellationClosed B := by
  exact And.intro E.cancellationTheoremClosed E.stableRankConditionClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse