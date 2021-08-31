def clean_argurment(argument_string)
  argument_string.gsub(/[^0-9?_*\/\-\+\ ]/i, "");
end

def check_for_multiple_question_mark_or_operators(argument_string)
  ["?", "*", "+", "-"].each do |operator|
    if argument_string.count(operator) > 1
      raise "Invalid param, it contains more than one #{operator} in parameter"
    end
  end
end

def check_for_multiple_division_operators(argument_string)
  division_counter = 0
  argument_string.split(" ").each do |el|
    if el == "/"
      division_counter += 1
    end
  end

  if division_counter > 1
    raise "Invalid param, it contains more than one / in parameter"
  end
end

def calculate(argument_string)
  removed_question_mark_string = argument_string.partition('?')[2]
  removed_question_mark_string_arr = removed_question_mark_string.split(" ")
  first_number = removed_question_mark_string_arr[0]
  second_number = removed_question_mark_string_arr[-1]

  if removed_question_mark_string.include?("+")

  elsif removed_question_mark_string.include?("-")

  elsif removed_question_mark_string.include?("*")

  else

  end

end

def start(raw_argument_string)
  cleaned_param = clean_argurment(raw_argument_string)
  check_for_multiple_question_mark_or_operators(cleaned_param)
  check_for_multiple_division_operators(cleaned_param)
end

start(ARGV[0])
