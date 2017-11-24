def quicksort(arr = [4,3,2,1])
  
  if arr.length < 2
   puts arr
  else 
   pivot = arr[0]
   less = array.select do |elem|
    elem < pivot
   end 
   great = array.select do |elem|
    elem > pivot
   end
   puts less + pivot + great
  end 
  
end 