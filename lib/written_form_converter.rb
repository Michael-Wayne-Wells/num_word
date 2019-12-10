class Converter

  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def to_written_form

    mike_array = []

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
      "0" => ""}

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
        " " => ""}

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
            2 => "-hundred ",
            3 => "-thousand ",
            4 => "",
            5 => "-hundred ",
            6 => "-million ",
            7 => "",
            8 => "-hundred ",
            9 => "-billion ",
            10 => "",
            11 => "-hundred ",
            12 => "-trillion "
          }
          x = 0
          reverse_number = @number.reverse()
          while (reverse_number.length() > x)
            if (x == 1) | (x == 4) | (x == 7) | (x == 10)
              if reverse_number[x] == "1"
              mike_array.shift()
               mike_array.unshift(teens.fetch(reverse_number[x] + reverse_number[(x-1)]) + milestones.fetch(x))
              else
                mike_array.unshift(tens.fetch(reverse_number[x]) + milestones.fetch(x))
              end
            else
              mike_array.unshift(ones.fetch(reverse_number[x]) + milestones.fetch(x))
            end
            x += 1
          end
          mike_array.join("")
        end
      end
