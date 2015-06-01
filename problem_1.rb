raw_data = $stdin.readlines().map { |data| data.chomp.to_i }
number_of_test_case = raw_data[0]
test_cases = raw_data[1..-1]


def sumup(n)
  (1...n).inject(0) { |sum, num| ( num % 3 == 0 || num % 5 == 0) ? sum + num : sum }
end


test_cases.each do |c|
  puts sumup(c)
end
