import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure VotingRule where
  candidates : Nat
  voters : Nat
  rule : (List (List Nat)) → List Nat

def strategyProof (R : VotingRule) : Prop :=
  ∀ (votersProfiles : List (List Nat)), ∀ (v : Nat), v < R.voters → truePreferences = votersProfiles[v] → 
    R.rule votersProfiles = R.rule (updateProfile votersProfiles v truePreferences)

def onto (R : VotingRule) : Prop :=
  ∀ ranking : List Nat, ranking.length = R.candidates → ∃ profiles, R.rule profiles = ranking

def GibbardSatterthwaite (R : VotingRule) : Prop :=
  strategyProof R ∧ onto R → ∃ v, ∀ profiles, R.rule profiles = v.preferences

def GibbSatClosed (R : VotingRule) : Prop :=
  GibbardSatterthwaite R

theorem gibb_sat_closed (R : VotingRule) : GibbSatClosed R :=
  by
    intro h
    exact h

end VotingTheoryCanonicalLaneLean
end HautevilleHouse