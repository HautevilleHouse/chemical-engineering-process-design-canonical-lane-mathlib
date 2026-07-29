import ChemicalEngineeringProcessDesignCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ProcessDesignAdmittedObject where
  process : Type
  constraints : Prop
  optimizationCriterion : Prop
  feasibility : Prop
  conclusion : feasibility

structure ProcessDesignEndgameState where
  object : ProcessDesignAdmittedObject

def ProcessDesignWitnessClosed (O : ProcessDesignAdmittedObject) : Prop :=
  O.feasibility

def sourceRepository : String :=
  "chemical-engineering-process-design-canonical-lane"

def sourceDescription : String :=
  "Process design admissible class bridge"

def sourceTheoremBoundary : String :=
  "unrestricted classical feasibility boundary"

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse