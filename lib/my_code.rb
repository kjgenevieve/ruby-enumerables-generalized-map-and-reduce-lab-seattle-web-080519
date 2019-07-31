def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end



# def one_yield
#   yield
# end

# def multiple_yields
#   yield
#   yield
# end

# one_yield { puts "one yield" }

# multiple_yields { puts "multiple yields" }


def reduce(source_array, starting_point = 0)
  new = starting_point
  i = 0
  while i < source_array.length do # Same
    if starting_point == 0
      yield  
    else
      yield
    end
    i += 1 # Same
  end
  return true
end

# def reduce_to_total(source_array, starting_point=0)
#   new = starting_point
#   i = 0
#   while i < source_array.length do
#     new += source_array[i]
#     i += 1
#   end
#   return new
# end

# def reduce_to_all_true(source_array)
#   i = 0
#   while i < source_array.length do # Same
#     if source_array[i] == false #YEILD
#       return false  # YEILD
#     end
#     i += 1 # Same
#   end
#   return true
# end

# def reduce_to_any_true(source_array)
#   i = 0
#   while i < source_array.length do
#     # stop enumerating and return true if any element is true
#     if source_array[i] == true
#       return true
#     end
#     i += 1
#   end
#   return false
# end