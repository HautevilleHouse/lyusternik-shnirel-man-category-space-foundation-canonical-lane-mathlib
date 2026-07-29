import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure LyusternikShnirelCategoryPackage where
  space : Type u
  topology : TopologicalSpace space
  catValue : ℕ
  cupLength : ℕ
  catLowerBoundByCupLength : Prop
  catFinite : Prop

structure LyusternikShnirelCategoryEvidence (L : LyusternikShnirelCategoryPackage) where
  catValueClosed : L.catValue = L.catValue
  cupLengthClosed : L.cupLength = L.cupLength
  catLowerBoundByCupLengthClosed : L.catLowerBoundByCupLength
  catFiniteClosed : L.catFinite

def LyusternikShnirelCategoryClosed (L : LyusternikShnirelCategoryPackage) : Prop :=
  L.catValue = L.catValue ∧ L.cupLength = L.cupLength ∧ L.catLowerBoundByCupLength ∧ L.catFinite

theorem lyusternik_shnirel_category_closed_from_evidence (L : LyusternikShnirelCategoryPackage) (E : LyusternikShnirelCategoryEvidence L) : LyusternikShnirelCategoryClosed L := by
  exact And.intro E.catValueClosed (And.intro E.cupLengthClosed (And.intro E.catLowerBoundByCupLengthClosed E.catFiniteClosed))

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse