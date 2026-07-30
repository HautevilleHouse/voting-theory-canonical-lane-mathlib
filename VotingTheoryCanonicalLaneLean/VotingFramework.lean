import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure VoterProfile where
  voterId : String
  preferences : List (String × Nat)

ductive BallotType where
  | plurality
  | ranked
  | approval

structure ElectionData where
  candidates : List String
  voters : List VoterProfile
  ballotType : BallotType
  outcome : Prop

structure VotingAdmittedObject where
  election : ElectionData
  fairnessCondition : Prop
  rationalityCondition : Prop
  conclusion : fairnessCondition ∧ rationalityCondition

def VotingWitnessClosed (O : VotingAdmittedObject) : Prop :=
  O.fairnessCondition ∧ O.rationalityCondition

end VotingTheoryCanonicalLaneLean
end HautevilleHouse