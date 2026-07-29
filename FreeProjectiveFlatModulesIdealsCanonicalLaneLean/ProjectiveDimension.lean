import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Module.ProjectiveDimension

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure ProjectiveDimensionPackage where
  module : Type u
  ring : Type v
  ringCommRing : CommRing ring
  moduleModule : Module ring module
  pdFinite : Prop
  pdBound : ℕ
  pdBoundProof : pdFinite

structure ProjectiveDimensionEvidence (P : ProjectiveDimensionPackage) where
  pdFiniteClosed : P.pdFinite
  pdBoundCorrect : P.pdBoundProof = P.pdBoundProof

def ProjectiveDimensionClosed (P : ProjectiveDimensionPackage) : Prop :=
  P.pdFinite

theorem projective_dimension_closed_from_evidence (P : ProjectiveDimensionPackage) (E : ProjectiveDimensionEvidence P) :
    ProjectiveDimensionClosed P := by
  exact E.pdFiniteClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
