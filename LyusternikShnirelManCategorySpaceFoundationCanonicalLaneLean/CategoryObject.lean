import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean

structure LSCategoryObject where
  space : Type
  topology : TopologicalSpace space
  categoryModel : Type
  categoryTopology : TopologicalSpace categoryModel
  homotopyInvariant : Prop
  conclusion : homotopyInvariant

def CategoryWitnessClosed (O : LSCategoryObject) : Prop :=
  O.homotopyInvariant

end LyusternikShnirelManCategorySpaceFoundationCanonicalLaneLean
end HautevilleHouse