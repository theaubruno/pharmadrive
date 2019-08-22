module ApplicationHelper
end

def sommeordos(array)
  sum = 0
  array.each do |patient|
    sum += patient.lists.count
    return sum
  end
end
