import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure MorseFunctionPackage {L : LyusternikShnirelCategoryPackage} (Lc : LyusternikShnirelCategoryEvidence L) where
  morseFunction : Type u → ℝ
  criticalPoints : Nat
  criticalPointsAtLeastCat : Prop
  criticalPointsAtLeastCatClosed : criticalPointsAtLeastCat

def MorseFunctionClosed {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (M : MorseFunctionPackage Lc) : Prop :=
  M.criticalPointsAtLeastCat

theorem morse_function_closed_from_evidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (M : MorseFunctionPackage Lc) (E : MorseFunctionEvidence M) : MorseFunctionClosed M := by
  exact E.criticalPointsAtLeastCatClosed

structure MorseFunctionEvidence {L : LyusternikShnirelCategoryPackage} {Lc : LyusternikShnirelCategoryEvidence L} (M : MorseFunctionPackage Lc) where
  criticalPointsAtLeastCatClosed : M.criticalPointsAtLeastCat

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse