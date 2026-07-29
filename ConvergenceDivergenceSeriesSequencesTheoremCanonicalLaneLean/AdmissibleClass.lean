import ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ConvergenceDivergenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvergenceDivergenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceSeriesSequencesTheoremCanonicalLaneLean
end HautevilleHouse