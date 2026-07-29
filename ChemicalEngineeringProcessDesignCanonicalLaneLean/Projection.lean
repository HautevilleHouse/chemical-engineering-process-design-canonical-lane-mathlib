import ChemicalEngineeringProcessDesignCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def chemicalEngineeringProjection : Projection ChemicalEngineeringEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem chemical_engineering_projection_idempotent (x : ChemicalEngineeringEndgameState) :
    chemicalEngineeringProjection.toFun (chemicalEngineeringProjection.toFun x) = chemicalEngineeringProjection.toFun x := by
  exact chemicalEngineeringProjection.idempotent x

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse