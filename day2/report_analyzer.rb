def is_safe?(report)
  report_list = report.split(' ').map(&:to_i)

  # check if elements are all increasing or all decreasing
  uniform_direction = false
  increasing = increasing?(report_list, uniform_direction)
  decreasing = decreasing?(report_list, uniform_direction)

  # is safe if uniform direction and difference within range
  uniform_direction = increasing || decreasing
  difference_within_range?(report_list) if uniform_direction
end

def increasing?(report_list, increasing)
  report_list.each_cons(2) do |a,b|
    increasing = b > a ? true : false
  end
  increasing
end

def decreasing?(report_list, decreasing)
  report_list.each_cons(2) do |a,b|
    decreasing = b < a ? true : false
  end
  decreasing
end

def difference_within_range?(list)
  result = true

  list.each_cons(2) do |a,b|
    result = result && (b-a).abs <= 3
  end
  result
end
