import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

def VotingTheoryAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem voting_theory_endgame (A : AdmissibleClass) : VotingTheoryAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VotingTheoryCanonicalLaneLean
end HautevilleHouse