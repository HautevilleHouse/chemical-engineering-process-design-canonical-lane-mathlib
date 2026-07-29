import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ChemicalReactorDesignPackage where
  reactorType : Type u
  massBalance : Type v
  energyBalance : Type w
  conversionEfficiency : Prop
  residenceTime : Prop
  reactorStability : Prop

structure ChemicalReactorDesignEvidence (C : ChemicalReactorDesignPackage) where
  conversionEfficiencyClosed : C.conversionEfficiency
  residenceTimeClosed : C.residenceTime
  reactorStabilityClosed : C.reactorStability

def ChemicalReactorDesignClosed (C : ChemicalReactorDesignPackage) : Prop :=
  C.conversionEfficiency ∧ C.residenceTime ∧ C.reactorStability

theorem chemical_reactor_design_closed_from_evidence (C : ChemicalReactorDesignPackage)
    (E : ChemicalReactorDesignEvidence C) : ChemicalReactorDesignClosed C :=
  And.intro E.conversionEfficiencyClosed (And.intro E.residenceTimeClosed E.reactorStabilityClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
