class News < ActiveRecord::Base

	extend FriendlyId
	friendly_id :title, use: :slugged

	# indicates that an image can be attached
	has_attached_file :image,
		:styles => { :medium => "300x300>" }

	# used to present the media when it is placed in the body of the news
	auto_html_for :video do
	    html_escape
	    image
	    youtube(:width => '100%', :height => 500, :autoplay => false)
	    link :target => "_blank", :rel => "nofollow"
	    simple_format
  	end


  	# Validates that the attached file is actually an image
  	validates_attachment_content_type :image,
  	content_type: /^image\/(png|gif|jpeg)/,
  	message: "Only images are allowed"

  	# Validates that there is an image attached
  	# validates :image, attachment_presence: true

end
