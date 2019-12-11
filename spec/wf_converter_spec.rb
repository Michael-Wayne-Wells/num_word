require('rspec')
require('written_form_converter')

describe(Converter) do

  describe('#letter_search') do
    it('makes the initialize work') do
      test = Converter.new("123")
      expect(test.number).to(eq("123"))
    end

    it('converts ones-type digits into written form') do
      test = Converter.new("1")
      expect(test.to_written_form).to(eq("one"))
    end

    it('adds spaces to number if length is less than four') do
      test = Converter.new("2")
      expect(test.to_written_form).to(eq("two"))
    end
    it('converts teens-type digits into written form') do
      test = Converter.new("11")
      expect(test.to_written_form).to(eq("eleven"))
    end
    it('converts tens-type digits into written form') do
      test = Converter.new("20")
      expect(test.to_written_form).to(eq("twenty"))
    end
    it('converts hundreds-type digits into written form') do
      test = Converter.new("120")
      expect(test.to_written_form).to(eq("one-hundred twenty"))
    end
    it('converts thousands-type digits into written form') do
      test = Converter.new("1110")
      expect(test.to_written_form).to(eq("one-thousand one-hundred ten"))
    end
    it('converts huge number of digits into written form') do
      test = Converter.new("1000000")
      expect(test.to_written_form).to(eq("one-million "))
    end

  end

end
