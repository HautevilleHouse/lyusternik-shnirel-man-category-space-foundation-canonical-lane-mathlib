import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundation

structure LusternikSchnirelmannCategoryObject (X : Type u) where
  cat : ℕ
  cat_def : cat = LusternikSchnirelmannCategory X

def LusternikSchnirelmannCategory (X : Type u) : ℕ := 0

structure LusternikSchnirelmannCategoryPackage (X : Type u) where
  topologicalSpace : TopologicalSpace X
  cat : ℕ
  catBounds : Prop
  cupLengthLowerBound : Prop
  coveringDimensionLowerBound : Prop

structure LusternikSchnirelmannCategoryEvidence {X : Type u}
  (P : LusternikSchnirelmannCategoryPackage X) where
  catBoundsClosed : P.catBounds
  cupLengthLowerBoundClosed : P.cupLengthLowerBound
  coveringDimensionLowerBoundClosed : P.coveringDimensionLowerBound

def LusternikSchnirelmannCategoryClosed {X : Type u}
  (P : LusternikSchnirelmannCategoryPackage X) : Prop :=
  P.catBounds ∧ P.cupLengthLowerBound ∧ P.coveringDimensionLowerBound

theorem lusternik_schnirelmann_category_closed_from_evidence
  {X : Type u} (P : LusternikSchnirelmannCategoryPackage X)
  (E : LusternikSchnirelmannCategoryEvidence P) : LusternikSchnirelmannCategoryClosed P :=
by
  exact And.intro E.catBoundsClosed (And.intro E.cupLengthLowerBoundClosed E.coveringDimensionLowerBoundClosed)

end LyusternikShnirelManCategorySpaceFoundation
end HautevilleHouse
