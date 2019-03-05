class Book < ApplicationRecord

  has_and_belongs_to_many :authors

  validates :title, presence: true
  validates :description, presence: true

  has_attached_file :image, styles: { image_index: "300x400>", image_show: "375x500>", image_author: "60x80>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
