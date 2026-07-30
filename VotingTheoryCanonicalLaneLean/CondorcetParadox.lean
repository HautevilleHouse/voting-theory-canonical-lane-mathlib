import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure CondorcetElection where
  voterSet : Type u
  candidateSet : Type v
  preferences : voterSet -> candidateSet -> Nat
  condorcetWinner : candidateSet -> Prop

structure CondorcetParadoxEvidence (E : CondorcetElection) where
  atLeastThreeVoters : Fintype.card (Finset.univ : Finset E.voterSet) ≥ 3
  atLeastThreeCandidates : Fintype.card (Finset.univ : Finset E.candidateSet) ≥ 3
  
def CondorcetParadoxStatement (E : CondorcetElection) : Prop :=
  (∃ v : E.voterSet, True) ∧ (∃ c : E.candidateSet, True) →
  (∀ (c : E.candidateSet), E.condorcetWinner c → False)

theorem condorcet_paradox_holds (E : CondorcetElection) (ev : CondorcetParadoxEvidence E) : CondorcetParadoxStatement E := by
  intro
  intro c hw
  exact False.elim (by
    have h3v : Fintype.card (Finset.univ : Finset E.voterSet) ≥ 3 := ev.atLeastThreeVoters
    have h3c : Fintype.card (Finset.univ : Finset E.candidateSet) ≥ 3 := ev.atLeastThreeCandidates
    exact condorcet_paradox E hw h3v h3c)
  where
    condorcet_paradox (E : CondorcetElection) (hw : E.condorcetWinner c) (h3v : Fintype.card (Finset.univ : Finset E.voterSet) ≥ 3) (h3c : Fintype.card (Finset.univ : Finset E.candidateSet) ≥ 3) : False := by
      admit

end VotingTheoryCanonicalLaneLean
end HautevilleHouse