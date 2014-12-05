# Setup to allow for left and bottom edges to be greater or less than 0 within the x/y axis.
# Cartesian axis x = height, y = width

class BoundingBox
	attr_reader :width, :height, :left, :right, :top, :bottom
	def initialize (left, bottom, width, height)
		@width = width
		@height = height
		@left = left 
		@right = left + width
		@top = bottom + height
		@bottom = bottom
	end

	def contains_point?(x, y)
		is_within = false
		if x >= @left && x <= @right
			if y >= @bottom && y <= @top
				is_within = true
			end
		end

		is_within

	end
end
