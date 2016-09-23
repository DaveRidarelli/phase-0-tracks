# Method with 2 arguments, array and integer
# find length of array
# initialize a variable
# loop incrementing variable while using it to reference
# array and check
def search_array(list, number)
  count=0
  while count<=list.length
    if list[count]==number
      return count
    else
      count+=1
    end
  end
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)
# Initialize with 0 and 1
# account for fib(1 and 2)
# count initialized at 2 if it doesn't match above case
def fib(number)
  number=number.to_i
  sequence=[]
  count=2
  if number==1
    sequence.push(0)
    p sequence
  elsif number==2
    sequence.push(0,1)
    p sequence
  else
    sequence.push(0,1)
    while count<number
      sequence[count]=sequence[count-1]+sequence[count-2]
      count+=1
    end
    p sequence[-1]
  end
end
fib(2)
fib(100)