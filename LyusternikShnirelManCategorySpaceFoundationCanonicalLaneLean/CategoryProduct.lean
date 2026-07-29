import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure CategoryProductPackage {L1 L2 : LyusternikShnirelCategoryPackage} (L1c : LyusternikShnirelCategoryEvidence L1) (L2c : LyusternikShnirelCategoryEvidence L2) where
  productSpace : Type u
  productTopology : TopologicalSpace productSpace
  catProductInequality : Prop
  catProductInequalityClosed : catProductInequality

def CategoryProductClosed {L1 L2 : LyusternikShnirelCategoryPackage} {L1c : LyusternikShnirelCategoryEvidence L1} {L2c : LyusternikShnirelCategoryEvidence L2} (P : CategoryProductPackage L1c L2c) : Prop :=
  P.catProductInequality

theorem category_product_closed_from_evidence {L1 L2 : LyusternikShnirelCategoryPackage} {L1c : LyusternikShnirelCategoryEvidence L1} {L2c : LyusternikShnirelCategoryEvidence L2} (P : CategoryProductPackage L1c L2c) (E : CategoryProductEvidence P) : CategoryProductClosed P := by
  exact E.catProductInequalityClosed

structure CategoryProductEvidence {L1 L2 : LyusternikShnirelCategoryPackage} {L1c : LyusternikShnirelCategoryEvidence L1} {L2c : LyusternikShnirelCategoryEvidence L2} (P : CategoryProductPackage L1c L2c) where
  catProductInequalityClosed : P.catProductInequality

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse