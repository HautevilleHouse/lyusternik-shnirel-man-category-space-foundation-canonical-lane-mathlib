import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CohomologyRingPackage {L : LyusternikShnirelCategoryPackage} (Lc : LyusternikShnirelCategoryEvidence L) where
  cohomologyRing : Type u
  ringStructure : Semiring cohomologyRing
  cupProductDefined : Prop
  zeroDivisorCondition : Prop
  zeroDivisorConditionClosed : zeroDivisorCondition
  cupProductDefinedClosed : cupProductDefined

def CohomologyRingClosed {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CohomologyRingPackage Lc) : Prop :=
  C.cupProductDefined ∧ C.zeroDivisorCondition

theorem cohomology_ring_closed_from_evidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CohomologyRingPackage Lc) (E : CohomologyRingEvidence C) : CohomologyRingClosed C := by
  exact And.intro E.cupProductDefinedClosed E.zeroDivisorConditionClosed

structure CohomologyRingEvidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (C : CohomologyRingPackage Lc) where
  cupProductDefinedClosed : C.cupProductDefined
  zeroDivisorConditionClosed : C.zeroDivisorCondition

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse