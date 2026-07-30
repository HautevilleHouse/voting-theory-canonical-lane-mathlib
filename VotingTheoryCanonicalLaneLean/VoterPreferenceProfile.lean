import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure VoterPreferenceProfile where
  voterCount : Nat
  alternativeCount : Nat
  preferences : List (List Nat)
  preferenceTotalOrders : Prop
  transitivePreferences : Prop
  completePreferences : Prop

structure VoterPreferenceEvidence (P : VoterPreferenceProfile) where
  preferenceTotalOrdersClosed : P.preferenceTotalOrders
  transitivePreferencesClosed : P.transitivePreferences
  completePreferencesClosed : P.completePreferences

def VoterPreferenceClosed (P : VoterPreferenceProfile) : Prop :=
  P.preferenceTotalOrders ∧ P.transitivePreferences ∧ P.completePreferences

theorem voter_preference_closed_from_evidence (P : VoterPreferenceProfile)
    (E : VoterPreferenceEvidence P) : VoterPreferenceClosed P := by
  exact And.intro E.preferenceTotalOrdersClosed
    (And.intro E.transitivePreferencesClosed E.completePreferencesClosed)

end VotingTheoryCanonicalLaneLean
end HautevilleHouse