import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignCanonicalLaneLean

structure ProcessControlPackage where
  feedbackController : Type u
  transferFunction : Type v
  stabilityCriterion : Prop
  pidTuning : Prop
  robustControl : Prop

structure ProcessControlEvidence (P : ProcessControlPackage) where
  stabilityCriterionClosed : P.stabilityCriterion
  pidTuningClosed : P.pidTuning
  robustControlClosed : P.robustControl

def ProcessControlClosed (P : ProcessControlPackage) : Prop :=
  P.stabilityCriterion ∧ P.pidTuning ∧ P.robustControl

theorem process_control_closed_from_evidence (P : ProcessControlPackage)
    (E : ProcessControlEvidence P) : ProcessControlClosed P :=
  And.intro E.stabilityCriterionClosed (And.intro E.pidTuningClosed E.robustControlClosed)

end ChemicalEngineeringProcessDesignCanonicalLaneLean
end HautevilleHouse
