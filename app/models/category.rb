class Category < ApplicationRecord
    has_many :recipes , :dependent => :destroy
    before_destroy :ensure_not_recipe

    def ensure_not_recipe
        if recipes.empty?
            return true
        else
            errors.add(:base, 'You have Recipes, you cannot delete category')
            return false
        end
    
     end
    
end
