def get_smallest_number(list)
  # get the smallest number from the list
  # using #get_number_from()
  get_number_from(1, list)
end

def get_left_list(location_id_lists)
  location_id_lists.map{|x,| x}
end

def get_right_list(location_id_lists)
  location_id_lists.map{|_, x| x}
end

def get_number_from(position, unsorted_list)
  unsorted_list.sort[position - 1]
end

def sum_distances(sorted_left_list, sorted_right_list)
  sorted_left_list.zip(sorted_right_list).map do |pair|
    (pair[0] - pair[1]).abs
  end.sum
end

def get_total_distance(left_list, right_list)
  sorted_left_list = left_list.sort
  sorted_right_list = right_list.sort
  sum_distances(sorted_left_list, sorted_right_list)
end

lines = File.readlines("input")
input_matrix = lines.map{|l| l.split(/\s+/).map(&:to_i) }

left_list = get_left_list(input_matrix)
right_list = get_right_list(input_matrix)
puts get_total_distance(left_list, right_list)
