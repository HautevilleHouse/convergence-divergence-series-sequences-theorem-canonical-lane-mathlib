import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure PowerSeriesConvergencePackage where
  radiusOfConvergence : Prop
  intervalOfConvergence : Prop
  termwiseDifferentiation : Prop
  termwiseIntegration : Prop
  analyticFunction : Prop

structure PowerSeriesConvergenceEvidence (P : PowerSeriesConvergencePackage) where
  radiusOfConvergenceClosed : P.radiusOfConvergence
  intervalOfConvergenceClosed : P.intervalOfConvergence
  termwiseDifferentiationClosed : P.termwiseDifferentiation
  termwiseIntegrationClosed : P.termwiseIntegration
  analyticFunctionClosed : P.analyticFunction

def PowerSeriesConvergenceClosed (P : PowerSeriesConvergencePackage) : Prop :=
  P.radiusOfConvergence ∧ P.intervalOfConvergence ∧ P.termwiseDifferentiation ∧ P.termwiseIntegration ∧ P.analyticFunction

theorem power_series_convergence_closed_from_evidence (P : PowerSeriesConvergencePackage) (E : PowerSeriesConvergenceEvidence P) :
    PowerSeriesConvergenceClosed P := by
  exact And.intro E.radiusOfConvergenceClosed
    (And.intro E.intervalOfConvergenceClosed
      (And.intro E.termwiseDifferentiationClosed
        (And.intro E.termwiseIntegrationClosed E.analyticFunctionClosed)))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse