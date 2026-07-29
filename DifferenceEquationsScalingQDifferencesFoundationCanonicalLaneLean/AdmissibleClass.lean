import HautevilleHouse.DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ScalingQAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ScalingQWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsScalingQDifferencesFoundationCanonicalLaneLean
end HautevilleHouse
