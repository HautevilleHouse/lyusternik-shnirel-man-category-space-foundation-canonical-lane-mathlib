import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean

structure CupLengthPackage {F : CategorySpaceFoundationPackage}
    (C : CoveringDimensionPackage F) where
  cohomologyRing : Type u
  cupProductStructure : Prop
  zeroCupPower : Prop
  cupLengthValue : Prop

structure CupLengthEvidence {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} (L : CupLengthPackage C) where
  cupProductStructureClosed : L.cupProductStructure
  zeroCupPowerClosed : L.zeroCupPower
  cupLengthValueClosed : L.cupLengthValue

def CupLengthClosed {F : CategorySpaceFoundationPackage}
    {C : CoveringDimensionPackage F} (L : CupLengthPackage C) : Prop :=
  L.cupProductStructure ∧ L.zeroCupPower ∧ L.cupLengthValue

theorem cup_length_closed_from_evidence
    {F : CategorySpaceFoundationPackage} {C : CoveringDimensionPackage F}
    (L : CupLengthPackage C) (E : CupLengthEvidence L) : CupLengthClosed L := by
  exact And.intro E.cupProductStructureClosed
    (And.intro E.zeroCupPowerClosed E.cupLengthValueClosed)

end LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse