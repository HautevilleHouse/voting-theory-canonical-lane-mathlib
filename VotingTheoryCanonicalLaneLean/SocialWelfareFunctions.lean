import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure SocialChoiceSet where
  chosen : List Nat
  nonempty : chosen ≠ []

structure SocialWelfareFunction (P : CandidatePreferenceProfile) where
  socialRanking : List Nat
  completes : ∀ c : Nat, c < P.candidates → c ∈ socialRanking
  antisymmetric : ∀ a b, a ∈ socialRanking → b ∈ socialRanking → a = b

def welfareClosed (F : SocialWelfareFunction P) : Prop :=
  F.completes ∧ F.antisymmetric

end VotingTheoryCanonicalLaneLean
end HautevilleHouse