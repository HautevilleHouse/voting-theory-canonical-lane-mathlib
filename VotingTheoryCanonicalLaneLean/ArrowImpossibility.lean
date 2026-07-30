import VotingTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure ArrowImpossibilityPackage where
  nonDictatorship : Prop
  paretoEfficiency : Prop
  independenceIrrelevantAlternatives : Prop
  unrestrictedDomain : Prop

def ArrowImpossibilityClosed (A : ArrowImpossibilityPackage) : Prop :=
  A.nonDictatorship ∧ A.paretoEfficiency ∧ A.independenceIrrelevantAlternatives ∧ A.unrestrictedDomain

theorem arrow_impossibility_holds (A : ArrowImpossibilityPackage) :
    ArrowImpossibilityClosed A := by
  exact And.intro A.nonDictatorship (And.intro A.paretoEfficiency (And.intro A.independenceIrrelevantAlternatives A.unrestrictedDomain))

end HautevilleHouse
end VotingTheoryCanonicalLaneLean