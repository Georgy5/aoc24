def sum_products(corrupted_memory_string)
  matches = corrupted_memory_string.scan(/mul\(\d+,\d+\)/)
  total_sum = matches.inject(0) do |sum, match|
    sum + multiply(match)
  end
end

def multiply(match_string)
  match_string.match(/mul\((\d+),(\d+)\)/) do |factors|
    # Extract, convert to integers, and multiply
    factors.captures.map(&:to_i).reduce(:*)
  end
end
