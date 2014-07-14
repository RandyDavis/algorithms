require 'rubygems'

module ArrayUtil
  def self.max(array)

  	max_val = array.first
  	array.each_index do |x|
  		if array[x] > max_val
  			max_val = array[x]
  		end
  	end
  	max_val
  end

  def self.middle_element(array)

  	mid_val = array.length / 2
  	if array == []
  		nil
  	elsif array.length % 2 == 1
  		array[mid_val]
  	else
  		(array[mid_val - 1] + array[mid_val])/2.0
  	end 
  end

  def self.sum_arrays(array1, array2)
  	arr_sum = []
  	if array1.length == array2.length
  		array1.each_index do |x|
  			arr_sum<<(array1[x] + array2[x])
  		end
  	end
  	arr_sum
  end
end
