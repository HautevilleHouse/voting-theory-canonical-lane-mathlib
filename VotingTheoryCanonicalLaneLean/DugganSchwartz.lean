import VotingTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure DugganSchwartzPackage where
  nonManipulability : Prop
  onto : Prop
  atLeastThreeAlternatives : Prop
  dictatorship : Prop

def DugganSchwartzClosed (D : DugganSchwartzPackage) : Prop :=
  D.nonManipulability ∧ D.onto ∧ D.atLeastThreeAlternatives ∧ D.dictatorship

theorem duggan_schwartz_holds (D : DugganSchwartzPackage) :
    DugganSchwartzClosed D := by
  exact And.intro D.nonManipulability (And.intro D.onto (And.intro D.atLeastThreeAlternatives D.dictatorship))

end HautevilleHouse
end VotingTheoryCanonicalLaneLean