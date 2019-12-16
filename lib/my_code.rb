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

def reduce(array, start = 0)
  i = 0
  total = start
  
  while i < array.length do
    el = array[i]
    total = yield(total, el)
    i += 1
  end
  
  total
end