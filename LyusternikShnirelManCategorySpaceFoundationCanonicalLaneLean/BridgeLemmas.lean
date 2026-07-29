import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  catClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
by
  exact A.object.cat_def.symm

end LyusternikShnirelManCategorySpaceFoundation
end HautevilleHouse
