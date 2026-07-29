import ChemicalEngineeringProcessDesignCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalEngineeringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse