import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure DivergenceTestPackage where
  termDivergenceTest : Prop
  nthTermTest : Prop
  divergenceOfHarmonicSeries : Prop
  comparisonDivergence : Prop

structure DivergenceTestEvidence (D : DivergenceTestPackage) where
  termDivergenceTestClosed : D.termDivergenceTest
  nthTermTestClosed : D.nthTermTest
  divergenceOfHarmonicSeriesClosed : D.divergenceOfHarmonicSeries
  comparisonDivergenceClosed : D.comparisonDivergence

def DivergenceTestClosed (D : DivergenceTestPackage) : Prop :=
  D.termDivergenceTest ∧ D.nthTermTest ∧ D.divergenceOfHarmonicSeries ∧ D.comparisonDivergence

theorem divergence_test_closed_from_evidence (D : DivergenceTestPackage) (E : DivergenceTestEvidence D) :
    DivergenceTestClosed D := by
  exact And.intro E.termDivergenceTestClosed
    (And.intro E.nthTermTestClosed
      (And.intro E.divergenceOfHarmonicSeriesClosed E.comparisonDivergenceClosed))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse