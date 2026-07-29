import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryMonoidalCategoriesCanonicalLaneLean.MonoidalCategoryDef

namespace HautevilleHouse
namespace CategoryTheoryMonoidalCategoriesCanonicalLaneLean

structure StringDiagramData (M : MonoidalCategoryData) where
  graphicalCalculus : Prop
  planarGraph : Type
  sources : planarGraph → M.Obj
  targets : planarGraph → M.Obj
  compositionRule : Prop
  tensorProductRule : Prop

structure StringDiagramEvidence {M : MonoidalCategoryData} (S : StringDiagramData M) where
  graphicalCalculusClosed : S.graphicalCalculus
  compositionRuleClosed : S.compositionRule
  tensorProductRuleClosed : S.tensorProductRule

def StringDiagramClosed {M : MonoidalCategoryData} (S : StringDiagramData M) : Prop :=
  S.graphicalCalculus ∧ S.compositionRule ∧ S.tensorProductRule

theorem string_diagram_closed_from_evidence {M : MonoidalCategoryData} (S : StringDiagramData M) (E : StringDiagramEvidence S) : StringDiagramClosed S := by
  exact And.intro E.graphicalCalculusClosed
    (And.intro E.compositionRuleClosed E.tensorProductRuleClosed)

end CategoryTheoryMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse