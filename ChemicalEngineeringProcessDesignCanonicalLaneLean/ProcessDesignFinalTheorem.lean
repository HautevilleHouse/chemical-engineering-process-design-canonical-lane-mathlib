import ChemicalEngineeringProcessDesignCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringProcessDesignCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

def ConstrainedChemicalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_engineering_endgame (A : AdmissibleClass) : ConstrainedChemicalEngineeringClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse