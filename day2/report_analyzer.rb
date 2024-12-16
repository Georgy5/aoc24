def is_safe?(report)
  report_list = report.split(' ').map(&:to_i)

  # check if elements are all increasing or all decreasing
  increasing = safe_levels?(report_list, :>)
  decreasing = safe_levels?(report_list, :<)

  increasing || decreasing
end

def safe_levels?(report_list, operator)
  # is safe if uniform direction and difference within range
  report_list.each_cons(2).all? do |a,b|
    b.send(operator, a) && (b - a).abs.between?(1, 3)
  end
end

def problem_dampener(report)
  report_list = report.split(' ').map(&:to_i)
  report_list.each_index.any? do |i|
    new_list = report_list.clone
    new_list.delete_at(i)
    new_report = new_list.join(" ")
    is_safe?(new_report)
  end
end

input = File.readlines('input', chomp: true)
puts "number of reports: #{input.size} reports"

safe_report_count = 0
input.each do |report|
  if is_safe?(report) || problem_dampener(report)
    safe_report_count += 1
  end
end
puts "number of safe reports is #{safe_report_count}"
