require 'rspec'

describe 'roman numeral converter' do
	it 'should convert 1000 to M' do
		expect(convert_to_numeral 1000).to eql "M"
	end

	it 'should convert 500 to D' do
		expect(convert_to_numeral 500).to eql "D"
	end

	it 'should convert 100 to C' do
		expect(convert_to_numeral 100).to eql "C"
	end

	it 'should convert 50 to L' do
		expect(convert_to_numeral 50).to eql "L"
	end

	it 'should convert 10 to X' do
		expect(convert_to_numeral 10).to eql "X"
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
			when remaining >= 100 && remaining < 500
				remaining -= 100
				numeral << "C"
			when remaining >= 50 && remaining < 100
				remaining -= 50
				numeral << "L"
			when remaining >= 10 && remaining < 50
				remaining -= 10
				numeral << "X"
		end
		return numeral 
	end

end











