class Review < ActiveRecord::Base
	belongs_to :article
	validates_presence_of :body, :article_id
end
