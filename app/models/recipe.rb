class Recipe < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_many :ingredients
    has_many :directions
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? },allow_destroy: true
 	accepts_nested_attributes_for :directions,reject_if: proc { |attributes| attributes['step'].blank? },allow_destroy: true
    validates :title, :description, :image, presence: true
    mount_uploader :image, ImageUploader

    def self.search_by(search_term)
        Recipe.joins(:ingredients).where("LOWER(title) LIKE :search_term OR LOWER(name) LIKE :search_term", search_term:"%#{search_term.downcase}%")
    end
end
