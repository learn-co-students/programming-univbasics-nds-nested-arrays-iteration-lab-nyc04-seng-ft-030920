def join_ingredients(src)
  result = []
  out = 0 
  while out < src.length do
    inner = src[out]
    result << "I love #{inner[0]} and #{inner[1]} on my pizza"
    out +=1
  end
  result 
end

def find_greater_pair(src)
  
  result = []
  out = 0 
  
  while out < src.length do
   result << (src[out][0] > src[out][1] ? src[out][0] : src[out][1])
   out += 1
end
result
end 

def total_even_pairs(src)
  total = 0
  out = 0 
  
  while out < src.length do
      if (src[out][0] % 2 == 0) && (src[out][1] % 2 == 0)
      total += (src[out][0] + src[out][1])
    end 
    out += 1 
  end
  total 
 end 
