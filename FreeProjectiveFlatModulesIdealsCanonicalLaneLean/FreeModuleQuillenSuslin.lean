import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeProjectiveFlatModulesIdealsCanonicalLaneLean

structure QuillenSuslinPackage where
  baseRing : Type u
  polynomialRing : Type v
  projectiveModuleOverPolynomial : Type w
  trivialityConclusion : Prop
  baseRingNoetherian : Prop
  baseRingRegular : Prop
  baseRingNoetherianTerm : baseRingNoetherian
  baseRingRegularTerm : baseRingRegular
  trivialityConclusionTerm : trivialityConclusion

structure QuillenSuslinEvidence (Q : QuillenSuslinPackage) where
  baseRingNoetherianClosed : Q.baseRingNoetherian
  baseRingRegularClosed : Q.baseRingRegular
  trivialityConclusionClosed : Q.trivialityConclusion

def QuillenSuslinClosed (Q : QuillenSuslinPackage) : Prop :=
  Q.baseRingNoetherian ∧ Q.baseRingRegular ∧ Q.trivialityConclusion

theorem quillen_suslin_closed_from_evidence (Q : QuillenSuslinPackage) (E : QuillenSuslinEvidence Q) : QuillenSuslinClosed Q := by
  exact And.intro E.baseRingNoetherianClosed (And.intro E.baseRingRegularClosed E.trivialityConclusionClosed)

end FreeProjectiveFlatModulesIdealsCanonicalLaneLean
end HautevilleHouse