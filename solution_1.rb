raw_data = $stdin.readlines().map { |data| data.chomp.to_i }
number_of_test_case = raw_data[0]
test_cases = raw_data[1..-1]

def sum_multiple(n1, n2, n3)
  lcm = n1 * n2
  n1_array = (n1...n3).step(n1).to_a
  sum_n1 = ((n1 + n1_array.last) / 2.0) * n1_array.length
  n2_array = (n2...n3).step(n2).to_a
  sum_n2 = ((n2 + n2_array.last) / 2.0) * n2_array.length
  if n3 < lcm
    p (sum_n1 + sum_n2).to_i
  else
    lcm_array = (lcm...n3).step(lcm).to_a
    sum_lcm = ((lcm + lcm_array.last) / 2.0) * lcm_array.length
    p ((sum_n1 + sum_n2) - sum_lcm ).to_i
  end
end

test_cases.each do |test_case|
  sum_multiple(3,5,test_case)
end
