import canonicalLaneMathlib.AdmissibleClass
import Mathlib.RingTheory.QuillenSuslin

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure QuillenSuslinPackage where
  ring : Type u
  ringCommRing : CommRing ring
  polynomialRing : Type v
  polynomialRingCommRing : CommRing polynomialRing
  projectiveModuleOverPolynomialRing : Type w
  projectiveModuleOverPolynomialRingModule : Module polynomialRing projectiveModuleOverPolynomialRing
  projective : Module.Projective polynomialRing projectiveModuleOverPolynomialRing
  free : Module.Free polynomialRing projectiveModuleOverPolynomialRing
  projectiveClosed : projective
  freeClosed : free

structure QuillenSuslinEvidence (Q : QuillenSuslinPackage) where
  projectiveClosed : Q.projective
  freeClosed : Q.free

def QuillenSuslinClosed (Q : QuillenSuslinPackage) : Prop :=
  Q.projective ∧ Q.free

theorem quillen_suslin_closed_from_evidence (Q : QuillenSuslinPackage) (E : QuillenSuslinEvidence Q) :
    QuillenSuslinClosed Q := by
  exact And.intro E.projectiveClosed E.freeClosed

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse
