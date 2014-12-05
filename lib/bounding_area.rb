# Create a `BoundingArea` class that represents a collection of 
# individual bounding boxes. It should implement the following method:

# * `contains_point?(x, y)` returns true if the given (x, y) 
# coordinate is contained within **any** of the bounding boxes for this area.

require_relative "bounding_box"
require 'pry'

class BoundingArea
	attr_reader :boxes
	def initialize (boxes)
		@boxes = boxes
	end

	def contains_point?(x, y)
		# to iterate through the array held by boxes
		is_within = false
		if !@boxes.empty?
			
			@boxes.each do |box|
				# binding.pry
				# check each box to see if the point is held within one of them, and if so it should return true
				if is_within == false # had to make sure I wasn't resetting to false...
					is_within = box.contains_point?(x, y)
				end
			end
		end
		is_within
	end
end



# # test data - it works for me...
# bottom_rect = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
# top_rect = BoundingBox.new(2.0, 1.0, 3.0, 4.0)
# empty_area = BoundingArea.new([top_rect, bottom_rect])
# puts empty_area.contains_point?(0.5, 0.5)

