import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VotingTheoryCanonicalLaneLean.SocialChoiceFunctions

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure ArrowConditions where
  unrestrictedDomain : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

def ArrowCollectiveRationality (C : ArrowConditions) : Prop :=
  C.unrestrictedDomain ∧ C.paretoEfficiency ∧ C.independenceOfIrrelevantAlternatives → C.nonDictatorship

structure ArrowTheoremPackage where
  conditions : ArrowConditions
  impossibility : Prop

structure ArrowEvidence (P : ArrowTheoremPackage) where
  impossibilityClosed : P.impossibility

def ArrowClosed (P : ArrowTheoremPackage) : Prop :=
  P.impossibility

theorem arrow_closed_from_evidence (P : ArrowTheoremPackage) (E : ArrowEvidence P) :
    ArrowClosed P := by
  exact E.impossibilityClosed

end VotingTheoryCanonicalLaneLean
end HautevilleHouse