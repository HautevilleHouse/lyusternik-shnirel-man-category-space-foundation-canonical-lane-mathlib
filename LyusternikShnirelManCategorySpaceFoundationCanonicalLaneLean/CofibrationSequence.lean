import LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean.LSCategoryObjects

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CofibrationSequence where
  spaces : List LSCategorySpace
  maps : List ((x : LSCategorySpace) → x.carrier → x.carrier)
  fundamentalCategoryConnected : Prop
  lsCategoryLowerBound : Prop
  fundamentalCategoryConnectedTerm : fundamentalCategoryConnected
  lsCategoryLowerBoundTerm : lsCategoryLowerBound

structure CofibrationSequenceEvidence (C : CofibrationSequence) where
  fundamentalCategoryConnectedClosed : C.fundamentalCategoryConnected
  lsCategoryLowerBoundClosed : C.lsCategoryLowerBound

def CofibrationSequenceClosed (C : CofibrationSequence) : Prop :=
  C.fundamentalCategoryConnected ∧ C.lsCategoryLowerBound

theorem cofibration_sequence_closed_from_evidence
    (C : CofibrationSequence) (E : CofibrationSequenceEvidence C) :
    CofibrationSequenceClosed C := by
  exact And.intro E.fundamentalCategoryConnectedClosed E.lsCategoryLowerBoundClosed

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse