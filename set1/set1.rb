module Set1
  def self.swap_small(array)
    min = 0
    array.each_index do |x|
        if array[x] < array[min]
            min = x
        end
    end

    temp = array[0]
    array[0] = array[min]
    array[min] = temp
    array
    
  end

 

  def self.find_sum_2(array, sum = 0)

    if array == [] 
        false
    elsif array.include?(0) || array == 0
        true
    elsif
        array.permutation(2).any? {|pair| pair.inject(:+) == 0}
        true
    else
        false
    end

    # array.each_index do |x|
    #     if array.length == 0
    #         false
    #     elsif array.include?(0) || array == 0
    #         true
    #     elsif array[x] + array[x] == sum
    #         true
    #     else
    #         false
    #     end
    #     false
    # end
                
                
    #     array.each_index do |x|
    #         if array[x] + array[x] == sum[x]
    #             true
    #         else
    #             false
    #         end
    #     end
    # end
  end

  def self.find_sum_3(array)

  end
end
