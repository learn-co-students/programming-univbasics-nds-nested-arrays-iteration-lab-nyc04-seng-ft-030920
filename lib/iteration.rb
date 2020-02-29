def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  stringarray = []
  row_index = 0
    while row_index < src.count do
      element_index = 0
      while element_index < src[row_index].count do
        p1 = "I love " + src[row_index][element_index] + " and "
        element_index += 1
        p2 = src[row_index][element_index].to_s + " on my pizza"
        p = p1 + p2
        stringarray.push(p)
        element_index += 1
      end
      row_index +=1
    end
    stringarray
#   stringarray = []
#   row_index = 0
# while row_index < src.count do
#   element_index = 0
#   while element_index < src[row_index].count do
#     into = "I love " + src[row_index][element_index] + " and " + (src[row_index][element_index]) + " on my pizza"
#     stringarray.push(into)
#     element_index += 1
#   end
#   row_index += 1
# end
# stringarray


 # [["I love" + src[row_index][element_index] + "and" "(src[row_index][element_index])" + "on my pizza"]]

end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  greaterarray = []
  row_index = 0
    while row_index < src.count do
      element_index = 0
          if src[row_index][element_index] > src[row_index][element_index + 1]
            greaterarray.push(src[row_index][element_index])
          else src[row_index][element_index] < src[row_index][element_index + 1]
            greaterarray.push(src[row_index][element_index + 1])
        end
        row_index += 1
    end
    greaterarray
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
    while row_index < src.count do
      element_index = 0
        if (src[row_index][element_index] % 2 == 0) && (src[row_index][element_index + 1] % 2 == 0)
          total += src[row_index][element_index]
          total += src[row_index][element_index + 1]
        end
      row_index += 1
    end
    total
end
