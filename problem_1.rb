raw_data = $stdin.readlines().map { |data| data.chomp.to_i }
number_of_test_case = raw_data[0]
test_cases = raw_data[1..-1]


def divisible_by_3(number)
  if [3,6,9].include? add_digits(number)
    true
  end
end

def divisible_by_5(number)
  if [5, 0].include? number.to_s[-1].to_i
    true
  end
end

def sum_of_three(n)
  list_of_three = []
  for num in (3...n)
    if divisible_by_3(num)
      list_of_three << num
    end
  end
  ((list_of_three[0] + list_of_three[-1]) / 2.0 ) * list_of_three.length
end

def sum_of_five(n)
  list_of_five = []
  for num in (5...n)
    if divisible_by_5(num)
      list_of_five << num
    end
  end
  ((list_of_five[0] + list_of_five[-1]) / 2.0) * list_of_five.length
end

def sum_of_fifthteen(n)
  if n >= 15
    list_of_fifthteen = []
    for num in (15...n)
      if (num % 15 == 0)
        list_of_fifthteen << num
      end
    end
    ((list_of_fifthteen[0] + list_of_fifthteen[-1]) / 2.0) * list_of_fifthteen.length
  else
    0
  end
end


def add_digits(number)
  @total = 0
  number.to_s.split("").each do |n|
    @total += n.to_i
  end
  if @total.to_s.length > 1
    add_digits(@total)
  end
  @total
end

test_cases.each do |num|
  puts (sum_of_five(num) + sum_of_three(num)) - sum_of_fifthteen(num)
end
