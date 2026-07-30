import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VotingTheoryCanonicalLaneLean.VotingFramework

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure SocialChoiceFunction where
  domain : List String
  codomain : List String
  aggregation : List String → String
  axioms : Prop

structure SocialChoiceEvidence (S : SocialChoiceFunction) where
  axiomsClosed : S.axioms

def SocialChoiceClosed (S : SocialChoiceFunction) : Prop :=
  S.axioms

theorem social_choice_closed_from_evidence (S : SocialChoiceFunction) (E : SocialChoiceEvidence S) :
    SocialChoiceClosed S := by
  exact E.axiomsClosed

end VotingTheoryCanonicalLaneLean
end HautevilleHouse