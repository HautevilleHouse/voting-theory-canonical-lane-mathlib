import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure SocialWelfareFunction where
  voterSet : Type u
  candidateSet : Type v
  profileType : Type w
  socialPreference : profileType -> candidateSet -> candidateSet -> Prop

structure ArrowConditions (S : SocialWelfareFunction) where
  universality : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

structure ArrowTheoremEvidence (S : SocialWelfareFunction) (C : ArrowConditions S) where
  universalityClosed : C.universality
  paretoEfficiencyClosed : C.paretoEfficiency
  independenceClosed : C.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : C.nonDictatorship
  impossibility : universalityClosed ∧ paretoEfficiencyClosed ∧ independenceClosed → ¬ nonDictatorshipClosed

def ArrowTheoremClosed (S : SocialWelfareFunction) (C : ArrowConditions S) : Prop :=
  C.universality ∧ C.paretoEfficiency ∧ C.independenceOfIrrelevantAlternatives ∧ C.nonDictatorship → False

theorem arrow_theorem_closed_from_evidence (S : SocialWelfareFunction) (C : ArrowConditions S) (ev : ArrowTheoremEvidence S C) : ArrowTheoremClosed S C := by
  intro h
  rcases h with ⟨hu, hp, hi, hn⟩
  apply ev.impossibility ⟨hu, hp, hi⟩ hn

end VotingTheoryCanonicalLaneLean
end HautevilleHouse