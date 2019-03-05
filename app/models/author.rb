class Author < ApplicationRecord

  has_and_belongs_to_many :books

  has_attached_file :avatar, styles: { avatar_img: "200x300>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
