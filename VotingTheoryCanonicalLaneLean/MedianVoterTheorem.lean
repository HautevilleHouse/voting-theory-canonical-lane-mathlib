import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VotingTheoryCanonicalLaneLean.VoterPreferenceProfile

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure SinglePeakedPreference (P : VoterPreferenceProfile) where
  singlePeaked : Prop
  medianVoterPreferred : Prop
  condorcetWinnerExists : Prop

def MedianVoterCondition (P : VoterPreferenceProfile) (S : SinglePeakedPreference P) : Prop :=
  S.singlePeaked ∧ S.medianVoterPreferred ∧ S.condorcetWinnerExists

structure SinglePeakedEvidence (P : VoterPreferenceProfile) (S : SinglePeakedPreference P) where
  singlePeakedClosed : S.singlePeaked
  medianVoterPreferredClosed : S.medianVoterPreferred
  condorcetWinnerExistsClosed : S.condorcetWinnerExists

def SinglePeakedClosed (P : VoterPreferenceProfile) (S : SinglePeakedPreference P) : Prop :=
  S.singlePeaked ∧ S.medianVoterPreferred ∧ S.condorcetWinnerExists

theorem single_peaked_closed_from_evidence (P : VoterPreferenceProfile)
    (S : SinglePeakedPreference P) (E : SinglePeakedEvidence P S) :
    SinglePeakedClosed P S := by
  exact And.intro E.singlePeakedClosed
    (And.intro E.medianVoterPreferredClosed E.condorcetWinnerExistsClosed)

end VotingTheoryCanonicalLaneLean
end HautevilleHouse