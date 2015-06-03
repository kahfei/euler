
# raw_data = $stdin.readlines().map { |data| data.chomp.to_i }
# number_of_test_case = raw_data[0]
# test_cases = raw_data[1..-1]

def add_digits(number)
  total = 0
  number.to_s.split("").each do |n|
    total += n.to_i
  end
  if total.to_s.length > 1
    div_by_3(@total)
  end
  total
end

def div_by_3(number)
  if add_digits(number) % 3 == 0
    puts true
  end
end


div_by_3(39999)