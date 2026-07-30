import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VotingTheoryCanonicalLaneLean.VoterPreferenceProfile

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure VotingRule (P : VoterPreferenceProfile) where
  outcome : List Nat
  strategyProof : Prop
  onto : Prop
  nonDictatorship : Prop

def StrategyProofCondition (P : VoterPreferenceProfile) (R : VotingRule P) : Prop :=
  R.strategyProof ∧ R.onto ∧ R.nonDictatorship

theorem voting_rule_impossible {P : VoterPreferenceProfile}
    (R : VotingRule P) : ¬ StrategyProofCondition P R := by
  intro h
  have h_strat : R.strategyProof := h.1
  have h_onto : R.onto := h.2.1
  have h_nondict : R.nonDictatorship := h.2.2
  have h_contra : False := h_nondict (by
    exact h_strat
  )
  exact h_contra

end VotingTheoryCanonicalLaneLean
end HautevilleHouse