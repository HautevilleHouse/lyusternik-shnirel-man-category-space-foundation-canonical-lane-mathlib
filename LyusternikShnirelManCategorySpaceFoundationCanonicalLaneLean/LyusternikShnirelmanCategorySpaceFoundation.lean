import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean

structure CategorySpaceFoundationPackage where
  topologicalSpace : Type u
  coveringDimension : Nat
  cupLength : Nat
  categoryLowerBound : Prop
  categoryUpperBound : Prop

structure CategorySpaceFoundationEvidence (F : CategorySpaceFoundationPackage) where
  categoryLowerBoundClosed : F.categoryLowerBound
  categoryUpperBoundClosed : F.categoryUpperBound

def CategorySpaceFoundationClosed (F : CategorySpaceFoundationPackage) : Prop :=
  F.categoryLowerBound ∧ F.categoryUpperBound

theorem category_space_foundation_closed_from_evidence
    (F : CategorySpaceFoundationPackage) (E : CategorySpaceFoundationEvidence F) :
    CategorySpaceFoundationClosed F := by
  exact And.intro E.categoryLowerBoundClosed E.categoryUpperBoundClosed

end LyusternikShnirelmanCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse