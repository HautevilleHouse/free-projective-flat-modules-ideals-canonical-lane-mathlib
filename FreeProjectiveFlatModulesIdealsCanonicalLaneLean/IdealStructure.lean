import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure IdealPackage where
  ring : Type u
  ideal : Type v
  finitelyGenerated : Prop
  projectiveIdeal : Prop
  flatIdeal : Prop

structure IdealEvidence (I : IdealPackage) where
  finitelyGeneratedClosed : I.finitelyGenerated
  projectiveIdealClosed : I.projectiveIdeal
  flatIdealClosed : I.flatIdeal

def IdealClosed (I : IdealPackage) : Prop :=
  I.finitelyGenerated ∧ I.projectiveIdeal ∧ I.flatIdeal

theorem ideal_closed_from_evidence (I : IdealPackage)
    (E : IdealEvidence I) : IdealClosed I := by
  exact And.intro E.finitelyGeneratedClosed
    (And.intro E.projectiveIdealClosed E.flatIdealClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse