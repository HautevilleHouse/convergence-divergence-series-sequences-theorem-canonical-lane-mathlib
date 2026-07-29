import ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvergenceDivergenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse