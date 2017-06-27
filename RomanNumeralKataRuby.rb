require 'rspec'

describe 'roman numeral converter' do
	it 'should convert 1000 to M' do
		expect(convert_to_numeral 1000).to eql "M"
	end

	it 'should convert 500 to D' do
		expect(convert_to_numeral 500).to eql "D"
	end

end

def convert_to_numeral number
	remaining = number
	numeral = ""
	until remaining == 0
		case
			when remaining >= 1000
				remaining -= 1000
				numeral << "M"
			when remaining >= 500 && remaining < 1000
				remaining -= 500
				numeral << "D"
		end
		return numeral 
	end

end











