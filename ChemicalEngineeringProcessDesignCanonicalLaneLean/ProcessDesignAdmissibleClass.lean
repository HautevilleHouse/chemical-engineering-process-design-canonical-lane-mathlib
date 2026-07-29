import ChemicalEngineeringProcessDesignCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ChemicalProcessObject where
  processName : String
  yield : ℝ
  selectivity : ℝ
  conversion : ℝ

structure AdmittedObject where
  object : ChemicalProcessObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.endpointSatisfied ∨ A.object.remainderRecorded) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse