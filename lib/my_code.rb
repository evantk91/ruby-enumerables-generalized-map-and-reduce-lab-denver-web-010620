def map(array)

  i = 0
  newArr = []

  while i < array.length do
    el = array[i]
    newArr << yield(el)
   i += 1
  end

  newArr
end

def reduce(array, start = nil)
  if start
    sum = start
    i = 0
  else 
    sum = array[0]
    i = 1  
  end

  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end

  sum
end