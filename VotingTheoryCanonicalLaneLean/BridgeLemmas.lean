import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VotingTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VotingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VotingTheoryCanonicalLaneLean
end HautevilleHouse