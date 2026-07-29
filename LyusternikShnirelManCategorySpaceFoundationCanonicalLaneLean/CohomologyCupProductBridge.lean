import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean

structure CohomologyCupProductBridgePackage {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} (L : CupLengthPackage C) where
  cupProductCohomology : Prop
  cohomologyAlgebra : Prop
  cupProductVanishing : Prop
  zeroCupPowerDerived : Prop

structure CohomologyCupProductBridgeEvidence {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} {L : CupLengthPackage C}
    (B : CohomologyCupProductBridgePackage L) where
  cupProductCohomologyClosed : B.cupProductCohomology
  cohomologyAlgebraClosed : B.cohomologyAlgebra
  cupProductVanishingClosed : B.cupProductVanishing
  zeroCupPowerDerivedClosed : B.zeroCupPowerDerived

def CohomologyCupProductBridgeClosed {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} {L : CupLengthPackage C}
    (B : CohomologyCupProductBridgePackage L) : Prop :=
  B.cupProductCohomology ∧ B.cohomologyAlgebra ∧
  B.cupProductVanishing ∧ B.zeroCupPowerDerived

theorem cohomology_cup_product_bridge_closed_from_evidence
    {F : CategorySpaceFoundationPackage} {C : CoveringDimensionPackage F}
    {L : CupLengthPackage C} (B : CohomologyCupProductBridgePackage L)
    (E : CohomologyCupProductBridgeEvidence B) : CohomologyCupProductBridgeClosed B := by
  exact And.intro E.cupProductCohomologyClosed
    (And.intro E.cohomologyAlgebraClosed
      (And.intro E.cupProductVanishingClosed E.zeroCupPowerDerivedClosed))

end LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse