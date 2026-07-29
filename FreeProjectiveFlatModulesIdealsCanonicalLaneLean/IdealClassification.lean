import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeProjectiveFlatModulesIdealsCanonicalLaneLean.FlatModule

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure IdealClassificationPackage {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} {F : FlatModulePackage P Q} where
  ideal : Set P.ring
  idealIsDirectSummandOfFree : Prop
  idealGeneratedByFiniteSet : Prop
  classificationComplete : Prop

structure IdealClassificationEvidence {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} {F : FlatModulePackage P Q} (I : IdealClassificationPackage P Q F) where
  idealIsDirectSummandOfFreeClosed : I.idealIsDirectSummandOfFree
  idealGeneratedByFiniteSetClosed : I.idealGeneratedByFiniteSet
  classificationCompleteClosed : I.classificationComplete

def IdealClassificationClosed {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} {F : FlatModulePackage P Q} (I : IdealClassificationPackage P Q F) : Prop :=
  I.idealIsDirectSummandOfFree ∧ I.idealGeneratedByFiniteSet ∧ I.classificationComplete

theorem ideal_classification_closed_from_evidence {P : FreeModuleProjectionPackage} {Q : ProjectiveModulePackage P} {F : FlatModulePackage P Q} (I : IdealClassificationPackage P Q F) (E : IdealClassificationEvidence I) : IdealClassificationClosed I := by
  exact And.intro E.idealIsDirectSummandOfFreeClosed (And.intro E.idealGeneratedByFiniteSetClosed E.classificationCompleteClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse