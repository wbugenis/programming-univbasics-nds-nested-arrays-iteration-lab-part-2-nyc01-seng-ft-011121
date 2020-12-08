def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  smallest = []
  src.length.times do |count|
    small = src[count][0]
    src[count].length.times do |inner_count|
      if src[count][inner_count] < small
        small = src[count][inner_count]
      end
    end
    smallest << small
  end
  smallest
end