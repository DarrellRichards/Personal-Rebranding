class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	has_many :comments
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
	has_attached_file :thumbnail, styles: { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/
end
