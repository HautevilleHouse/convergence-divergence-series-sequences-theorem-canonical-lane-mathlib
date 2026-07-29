import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure ConvergenceTestPackage where
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  comparisonTest : Prop
  alternatingSeriesTest : Prop

structure ConvergenceTestEvidence (C : ConvergenceTestPackage) where
  ratioTestClosed : C.ratioTest
  rootTestClosed : C.rootTest
  integralTestClosed : C.integralTest
  comparisonTestClosed : C.comparisonTest
  alternatingSeriesTestClosed : C.alternatingSeriesTest

def ConvergenceTestClosed (C : ConvergenceTestPackage) : Prop :=
  C.ratioTest ∧ C.rootTest ∧ C.integralTest ∧ C.comparisonTest ∧ C.alternatingSeriesTest

theorem convergence_test_closed_from_evidence (C : ConvergenceTestPackage) (E : ConvergenceTestEvidence C) :
    ConvergenceTestClosed C := by
  exact And.intro E.ratioTestClosed
    (And.intro E.rootTestClosed
      (And.intro E.integralTestClosed
        (And.intro E.comparisonTestClosed E.alternatingSeriesTestClosed)))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse