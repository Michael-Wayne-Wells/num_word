class Converter
  def initialize(number)
    @number = number
  end
  def number
    @number
  end
  def to_written_form
    ones = {
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine",
      " " => "",
      "0" => ""
    }
    teens = {
      "10" => "ten",
      "11" => "eleven",
      "12" => "twelve",
      "13" => "thrirteen",
      "14" => "fourteen",
      "15" => "fiveteen",
      "16" => "sixteen",
      "17" => "seventeen",
      "18" => "eighteen",
      "19" => "nineteen",
      " " => ""
    }
    tens = {
      "2" => "twenty",
      "3" => "thirty",
      "4" => "forty",
      "5" => "fifty",
      "6" => "sixty",
      "7" => "seventy",
      "8" => "eighty",
      "9" => "ninety",
      " " => "",
      "0" => ""
    }
    milestones = {
      0 => "",
      1 => "",
      2 => "-hundred and ",
      3 => "-thousand ",
      4 => "",
      5 => "-hundred and ",
      6 => "-million ",
      7 => "",
      8 => "-hundred and ",
      9 => "-billion ",
      10 => "",
      11 => "-hundred and ",
      12 => "-trillion "
    }
    reverse_number = @number.reverse()
    x = 0
    num_array = []
    while (reverse_number.length() > x)
      if reverse_number[x] == "0"
        num_array.unshift('')
      else
        if (x == 1) | (x == 4) | (x == 7) | (x == 10)
          if reverse_number[x] == "1"
            num_array.shift()
            num_array.unshift(teens.fetch(reverse_number[x] + reverse_number[(x-1)]) + milestones.fetch(x))
          else
            num_array.unshift(tens.fetch(reverse_number[x]) + milestones.fetch(x))
          end

        else
          num_array.unshift(ones.fetch(reverse_number[x]) + milestones.fetch(x))
        end
      end
      x += 1
    end
    num_array.join("")
  end

end
