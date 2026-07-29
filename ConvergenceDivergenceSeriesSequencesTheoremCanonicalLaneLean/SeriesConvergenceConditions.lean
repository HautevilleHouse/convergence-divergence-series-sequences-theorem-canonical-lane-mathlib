import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure SeriesConvergenceConditionsPackage where
  termTest : Prop
  partialSumBounded : Prop
  absoluteConvergence : Prop
  conditionalConvergence : Prop

structure SeriesConvergenceConditionsEvidence (S : SeriesConvergenceConditionsPackage) where
  termTestClosed : S.termTest
  partialSumBoundedClosed : S.partialSumBounded
  absoluteConvergenceClosed : S.absoluteConvergence
  conditionalConvergenceClosed : S.conditionalConvergence

def SeriesConvergenceConditionsClosed (S : SeriesConvergenceConditionsPackage) : Prop :=
  S.termTest ∧ S.partialSumBounded ∧ S.absoluteConvergence ∧ S.conditionalConvergence

theorem series_convergence_conditions_closed_from_evidence (S : SeriesConvergenceConditionsPackage) (E : SeriesConvergenceConditionsEvidence S) :
    SeriesConvergenceConditionsClosed S := by
  exact And.intro E.termTestClosed
    (And.intro E.partialSumBoundedClosed
      (And.intro E.absoluteConvergenceClosed E.conditionalConvergenceClosed))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse