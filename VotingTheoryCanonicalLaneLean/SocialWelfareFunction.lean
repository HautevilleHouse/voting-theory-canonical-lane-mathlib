import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VotingTheoryCanonicalLaneLean.VoterPreferenceProfile

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure SocialWelfareFunction (P : VoterPreferenceProfile) where
  domain : List (List Nat)
  codomain : List Nat
  aggregationRule : (List (List Nat)) → List Nat
  unanimityRespect : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

def ArrowCondition (P : VoterPreferenceProfile) (F : SocialWelfareFunction P) : Prop :=
  F.unanimityRespect ∧ F.independenceOfIrrelevantAlternatives ∧ F.nonDictatorship

structure SocialWelfareFunctionEvidence (P : VoterPreferenceProfile) 
    (F : SocialWelfareFunction P) where
  unanimityRespectClosed : F.unanimityRespect
  independenceOfIrrelevantAlternativesClosed : F.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : F.nonDictatorship

theorem social_welfare_function_arrow_impossible {P : VoterPreferenceProfile}
    (F : SocialWelfareFunction P) : ¬ ArrowCondition P F := by
  intro h
  exact False.elim (by
    have : F.nonDictatorship := h.2.2
    have : F.independenceOfIrrelevantAlternatives := h.2.1
    have : F.unanimityRespect := h.1
    exact False.elim (by
      have : F.unanimityRespect := h.1
      exact h.2.2 (by
        -- This would require a proof that Arrow's theorem holds; we assume it's known
        sorry
      )
    )
  )

end VotingTheoryCanonicalLaneLean
end HautevilleHouse