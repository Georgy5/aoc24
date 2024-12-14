def is_safe?(report)
  report_list = report.split(' ').map(&:to_i)

  # check if elements are all increasing or all decreasing
  increasing = safe_levels?(report_list, '>')
  decreasing = safe_levels?(report_list, '<')

  increasing || decreasing
end

def safe_levels?(report_list, operator)
  # is safe if uniform direction and difference within range
  report_list.each_cons(2).all? do |a,b|
    b.send(operator.to_sym, a) && (b-a).abs <= 3
  end
end

input = File.readlines('input', chomp: true)
puts "number of reports: #{input.size} reports"

safe_report_count = 0
input.each do |report|
  safe_report_count += 1 if is_safe?(report)
end
puts "number of safe reports is #{safe_report_count}"
