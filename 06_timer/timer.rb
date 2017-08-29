class Timer
  #write your code here
  attr_accessor :timer, :seconds, :minutes, :hours

  def seconds
  	@timer = 0
  end

  def time_string
  	res = ''
  	time_convert
		res << @hours + ':'
		res << @minutes + ':'
		res << @seconds

  	return res
  end

  def time_convert
  	@hours = @hours.to_i
  	@minutes = @minutes.to_i
  	@seconds = @seconds.to_i
  	
  	while(@seconds >= 60)
  			@minutes += 1
  			@seconds -= 60
  	end

  	while(@minutes >= 60)
  		@hours += 1
  		@minutes -= 60
  	end

  	time_pad
  end

  def time_pad
  	@hours = @hours.to_s
  	@minutes = @minutes.to_s
  	@seconds = @seconds.to_s
  	
  	if(@hours.to_i < 10 && @hours.to_i > -1)
  		@hours.prepend('0')
  	end
  	if(@minutes.to_i < 10 && @minutes.to_i > -1)
  		@minutes.prepend('0')
  	end
  	if(@seconds.to_i < 10 && @seconds.to_i > -1)
  		@seconds.prepend('0')
  	end
  end
end
