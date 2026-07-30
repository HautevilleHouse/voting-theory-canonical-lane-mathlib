import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : VotingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VotingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VotingTheoryCanonicalLaneLean
end HautevilleHouse