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

def tempsmoyen(array)
  times = []
  array.each do |list|
    time = (list.ready_at.to_i - list.created_at.to_i)
    times << time
  end
  average = times.inject { |sum, el| sum + el }.to_f / times.size
  return average
end
