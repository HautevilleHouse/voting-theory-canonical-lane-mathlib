import VotingTheoryCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure VotingAdmittedObject where
  electorate : Type
  preferenceProfile : electorate → electorate → Prop
  electionMethod : Type
  fairnessAxioms : Prop
  conclusion : Prop

def VotingWitnessClosed (O : VotingAdmittedObject) : Prop :=
  O.fairnessAxioms ∧ O.conclusion

end VotingTheoryCanonicalLaneLean
end HautevilleHouse
