import VotingTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure MaysTheoremPackage where
  anonymous : Prop
  neutral : Prop
  monotone : Prop
  decisive : Prop
  simpleMajority : Prop

def MaysTheoremClosed (M : MaysTheoremPackage) : Prop :=
  M.anonymous ∧ M.neutral ∧ M.monotone ∧ M.decisive ∧ M.simpleMajority

theorem mays_theorem_holds (M : MaysTheoremPackage) :
    MaysTheoremClosed M := by
  exact And.intro M.anonymous (And.intro M.neutral (And.intro M.monotone (And.intro M.decisive M.simpleMajority)))

end HautevilleHouse
end VotingTheoryCanonicalLaneLean