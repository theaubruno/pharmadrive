module ApplicationHelper
end

def sommeordos(array)
  sum = 0
  array.each do |patient|
    sum += patient.lists.count
    return sum
  end
end

def sommelists(array)
  lists = []
  array.each do |list|
    if list.delivered? && list.delivered_at.day == Time.now.day
      lists << list
    end
  end
  return lists
end

def sommelists2(array)
  lists2 = []
  array.each do |list|
    if list.delivered?
      lists2 << list
    end
  end
  return lists2
end
