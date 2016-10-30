class Spot < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_attached_file :image, styles: { medium: "700x400>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
