import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure SerreSplittingPackage (Q : QuillenSuslinPackage) where
  projectiveModule : Type u
  freeModuleComplement : Type v
  splittingExists : Prop
  rankBound : Prop
  splittingExistsTerm : splittingExists
  rankBoundTerm : rankBound

structure SerreSplittingEvidence {Q : QuillenSuslinPackage} (S : SerreSplittingPackage Q) where
  splittingExistsClosed : S.splittingExists
  rankBoundClosed : S.rankBound

def SerreSplittingClosed {Q : QuillenSuslinPackage} (S : SerreSplittingPackage Q) : Prop :=
  S.splittingExists ∧ S.rankBound

theorem serre_splitting_closed_from_evidence {Q : QuillenSuslinPackage} (S : SerreSplittingPackage Q) (E : SerreSplittingEvidence S) : SerreSplittingClosed S := by
  exact And.intro E.splittingExistsClosed E.rankBoundClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse