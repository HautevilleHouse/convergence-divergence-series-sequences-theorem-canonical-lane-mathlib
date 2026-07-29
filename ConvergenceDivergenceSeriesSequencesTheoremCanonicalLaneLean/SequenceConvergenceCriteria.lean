import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure SequenceConvergenceCriteriaPackage where
  epsilonN : Prop
  cauchyCriterion : Prop
  monotoneBounded : Prop
  squeezeTheorem : Prop

structure SequenceConvergenceCriteriaEvidence (S : SequenceConvergenceCriteriaPackage) where
  epsilonNClosed : S.epsilonN
  cauchyCriterionClosed : S.cauchyCriterion
  monotoneBoundedClosed : S.monotoneBounded
  squeezeTheoremClosed : S.squeezeTheorem

def SequenceConvergenceCriteriaClosed (S : SequenceConvergenceCriteriaPackage) : Prop :=
  S.epsilonN ∧ S.cauchyCriterion ∧ S.monotoneBounded ∧ S.squeezeTheorem

theorem sequence_convergence_criteria_closed_from_evidence (S : SequenceConvergenceCriteriaPackage) (E : SequenceConvergenceCriteriaEvidence S) :
    SequenceConvergenceCriteriaClosed S := by
  exact And.intro E.epsilonNClosed
    (And.intro E.cauchyCriterionClosed
      (And.intro E.monotoneBoundedClosed E.squeezeTheoremClosed))

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse