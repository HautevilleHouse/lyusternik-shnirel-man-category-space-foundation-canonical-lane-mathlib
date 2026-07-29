import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CohomologyCupLengthPackage where
  cupLengthDefined : Prop
  cupLengthBound : Prop
  cupLengthUpperBound : Prop
  cupLengthLowerBound : Prop

structure CohomologyCupLengthEvidence (C : CohomologyCupLengthPackage) where
  cupLengthDefinedClosed : C.cupLengthDefined
  cupLengthBoundClosed : C.cupLengthBound
  cupLengthUpperBoundClosed : C.cupLengthUpperBound
  cupLengthLowerBoundClosed : C.cupLengthLowerBound

def CohomologyCupLengthClosed (C : CohomologyCupLengthPackage) : Prop :=
  C.cupLengthDefined ∧ C.cupLengthBound ∧ C.cupLengthUpperBound ∧ C.cupLengthLowerBound

theorem cohomology_cup_length_closed_from_evidence (C : CohomologyCupLengthPackage) (E : CohomologyCupLengthEvidence C) :
    CohomologyCupLengthClosed C := by
  exact And.intro E.cupLengthDefinedClosed (And.intro E.cupLengthBoundClosed (And.intro E.cupLengthUpperBoundClosed E.cupLengthLowerBoundClosed))

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse