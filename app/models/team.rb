class Team < ActiveRecord::Base
		belongs_to :field
		has_attached_file :image
		validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
