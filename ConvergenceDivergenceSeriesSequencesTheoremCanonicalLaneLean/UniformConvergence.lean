import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure UniformConvergencePackage where
  uniformCauchyCriterion : Prop
  weierstrassMTest : Prop
  continuityOfLimit : Prop
  integrabilityOfLimit : Prop
  differentiabilityOfLimit : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformCauchyCriterionClosed : U.uniformCauchyCriterion
  weierstrassMTestClosed : U.weierstrassMTest
  continuityOfLimitClosed : U.continuityOfLimit
  integrabilityOfLimitClosed : U.integrabilityOfLimit
  differentiabilityOfLimitClosed : U.differentiabilityOfLimit

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformCauchyCriterion ∧ U.weierstrassMTest ∧ U.continuityOfLimit ∧ U.integrabilityOfLimit ∧ U.differentiabilityOfLimit

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) :
    UniformConvergenceClosed U := by
  exact And.intro E.uniformCauchyCriterionClosed
    (And.intro E.weierstrassMTestClosed
      (And.intro E.continuityOfLimitClosed
        (And.intro E.integrabilityOfLimitClosed E.differentiabilityOfLimitClosed)))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse