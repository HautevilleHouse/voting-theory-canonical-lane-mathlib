import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure Voter where
  id : Nat
  preferences : List Nat

structure CandidatePreferenceProfile where
  voters : List Voter
  candidates : Nat
  profileConsistent : Prop

def profileConsistentDefinition (p : CandidatePreferenceProfile) : Prop :=
  (∀ v ∈ p.voters, ∀ c ∈ v.preferences, c < p.candidates) ∧
  (∀ v ∈ p.voters, List.dedup v.preferences = v.preferences)

end VotingTheoryCanonicalLaneLean
end HautevilleHouse