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

def get_number_from(position, sorted_list)
  sorted_list.sort[position - 1]
end
