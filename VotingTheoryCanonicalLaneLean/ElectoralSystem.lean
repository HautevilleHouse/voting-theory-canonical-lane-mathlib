import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure ElectoralSystem where
  voterSet : Type u
  candidateSet : Type v
  preferenceRankings : voterSet -> candidateSet -> Nat
  votingRule : (voterSet -> candidateSet -> Nat) -> candidateSet -> Prop

structure ElectoralSystemEvidence (E : ElectoralSystem) where
  voterSetNonempty : Nonempty E.voterSet
  candidateSetNonempty : Nonempty E.candidateSet

structure ElectoralSystemClosed (E : ElectoralSystem) : Prop :=
  voterSetNonempty : Nonempty E.voterSet
  candidateSetNonempty : Nonempty E.candidateSet
  
theorem electoral_system_closed_from_evidence (E : ElectoralSystem) (ev : ElectoralSystemEvidence E) : ElectoralSystemClosed E := by
  exact { voterSetNonempty := ev.voterSetNonempty, candidateSetNonempty := ev.candidateSetNonempty }

end VotingTheoryCanonicalLaneLean
end HautevilleHouse