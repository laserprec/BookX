class Post < ActiveRecord::Base
	validates :title, :presence => true
	validates :body, :presence => true
	has_many :comments
	has_attached_file :image, styles: { large:"600x600", medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def self.search(campus,keyword)
		if !keyword || keyword.empty?
			return nil
		else
			where("campus LIKE? AND (title LIKE ? OR author LIKE ? OR isbn LIKE ?)", "#{campus}", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")
		end
	end
end
