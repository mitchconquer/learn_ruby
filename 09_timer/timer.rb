class Timer

	def initialize
		@seconds = 0
	end

	def seconds=(time)
		@seconds = time
	end

	def seconds
		@seconds
	end

	def time_string
		time = @seconds
		hours = time / 3600
		time = time - (hours * 3600)
		minutes = time / 60
		seconds = time - (minutes * 60)

		values = [hours, minutes, seconds]

		values.map! do |value|
			if value < 10
				value = "0" + value.to_s
			else
				value = value.to_s
			end
		end

		values[0] + ":" + values[1] + ":" + values[2]
	end
end
