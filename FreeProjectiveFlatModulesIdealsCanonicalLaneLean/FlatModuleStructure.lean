import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure FlatModulePackage where
  module : Type u
  ring : Type v
  tensorProductExactness : Prop
  localCriterionSatisfied : Prop
  directLimitClosed : Prop

structure FlatModuleEvidence (F : FlatModulePackage) where
  tensorProductExactnessClosed : F.tensorProductExactness
  localCriterionSatisfiedClosed : F.localCriterionSatisfied
  directLimitClosedClosed : F.directLimitClosed

def FlatModuleClosed (F : FlatModulePackage) : Prop :=
  F.tensorProductExactness ∧ F.localCriterionSatisfied ∧ F.directLimitClosed

theorem flat_module_closed_from_evidence (F : FlatModulePackage)
    (E : FlatModuleEvidence F) : FlatModuleClosed F := by
  exact And.intro E.tensorProductExactnessClosed
    (And.intro E.localCriterionSatisfiedClosed E.directLimitClosedClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse