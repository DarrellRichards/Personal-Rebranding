class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	has_attached_file :featured_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :featured_image, content_type: /\Aimage\/.*\Z/
end
