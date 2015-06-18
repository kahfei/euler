raw_data = $stdin.readlines().map { |data| data.chomp.to_i }
number_of_test_case = raw_data[0]
test_cases = raw_data[1..-1]

def sums(n)
  for i in 1 .. n
    current = n-1
    total = (current/3).floor*(3+3*(current/3).floor)/2
    total += (current/5).floor*(5+5*(current/5).floor)/2
    total -= (current/15).floor*(15+15*(current/15).floor)/2
  end
  total
end

test_cases.each do |num|
  p sums(num)
end