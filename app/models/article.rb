class Article < ActiveRecord::Base
	belongs_to :category 
    belongs_to :auothor
    has_many :reviews
end
