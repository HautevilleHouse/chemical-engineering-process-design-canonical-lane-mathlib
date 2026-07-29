import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure SeparationProcessesPackage where
  distillationModel : Type u
  membraneModel : Type v
  extractionModel : Type w
  vaporLiquidEquilibrium : Prop
  massTransferRate : Prop
  selectivityFactor : Prop

structure SeparationProcessesEvidence (S : SeparationProcessesPackage) where
  vaporLiquidEquilibriumClosed : S.vaporLiquidEquilibrium
  massTransferRateClosed : S.massTransferRate
  selectivityFactorClosed : S.selectivityFactor

def SeparationProcessesClosed (S : SeparationProcessesPackage) : Prop :=
  S.vaporLiquidEquilibrium ∧ S.massTransferRate ∧ S.selectivityFactor

theorem separation_processes_closed_from_evidence (S : SeparationProcessesPackage)
    (E : SeparationProcessesEvidence S) : SeparationProcessesClosed S :=
  And.intro E.vaporLiquidEquilibriumClosed (And.intro E.massTransferRateClosed E.selectivityFactorClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
