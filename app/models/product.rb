class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  belongs_to :user, optional: true

  validates :brand, :model, :price, :category, presence: true
  validates :description, length: { maximum: 1000, too_long: "1000 karakternél kevesebbnek kell lennie a leírásnak!"}
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  BRAND = %w{ HUSQVARNA MCCULLOCH AS-MOTOR }
  CATEGORY = %w{ fűnyíró sövényvágó láncfűrész }

  has_many :line_items

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Van elem a kosárban")
      throw :abort
    end
  end

end
