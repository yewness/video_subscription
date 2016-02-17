class Video < ActiveRecord::Base
	belongs_to :category
	resourcify

	def next
		Video.where("id > ?", id).first
	end

	def prev
		Video.where("id < ?", id).last
	end

	def lower_primary
		self.where(category_id: 1)
	end

	def upper_primary
		self.where(category_id: 2)
	end

	def lower_secondary
		self.where(category_id: 3)
	end

	def upper_secondary
		self.where(category_id: 4)
	end
end
