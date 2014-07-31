class MyHash
  def initialize
    @pairs = Array.new(4) {[]}
    @key_count = 0
  end

  def []= (key, value)
    resize_hash(@pairs.length*2) if @key_count >= @pairs.length/2
    index = find_index(key)
    @pairs[index].each do |pair|
      return pair[-1] = value if pair.first == key
    end
    @pairs[index] << [key, value]
    @key_count += 1
    value
  end

  def [](key)
    index = find_index(key)
    @pairs[index].each do |pair|
      return pair.last if pair.first == key
    end
    nil
  end

  def find_index(key)
    key.hash % @pairs.length
  end

  def resize_hash(new_size)
    old_pairs = @pairs
    @pairs = Array.new(new_size) { [] }
    @key_count = 0      #Reset key count and avoid possible infinite loop

    old_pairs.each do |key_value_pairs|
      key_value_pairs.each do |pair|
        self[pair.first]= pair.last
      end
    end
  end
end