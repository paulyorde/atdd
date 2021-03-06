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

	it 'should convert 9 to IX' do
		expect(convert_to_numeral 9).to eql "IX"
	end

	it 'should convert 8 to VIII' do
		expect(convert_to_numeral 8).to eql "VIII"
	end

	it 'should convert 7 to VII' do
		expect(convert_to_numeral 7).to eql "VII"
	end

	it 'should convert 6 to VI' do
		expect(convert_to_numeral 6).to eql "VI"
	end

	it 'should convert 5 to V' do
		expect(convert_to_numeral 5).to eql "V"
	end

	it 'should convert 4 to IV' do
		expect(convert_to_numeral 4).to eql "IV"
	end

	it 'should convert 3 to III' do
		expect(convert_to_numeral 3).to eql "III"
	end

	it 'should convert 2 to II' do
		expect(convert_to_numeral 2).to eql "II"
	end

	it 'should convert 1 to I' do
		expect(convert_to_numeral 1).to eql "I"
	end

end

def convert_to_numeral number
	values = [1000,500,100,50,10,9,5,4,1]
	symbols = ["M","D","C","L","X","IX","V","IV","I"]

	remaining = number
	numeral = ""

	values.each_index do |i|
	 	remaining = appendNumeral remaining, values[i], symbols[i], numeral
	end

	numeral
end

def appendNumeral number, value, numeralToAppend, numeral
	remaining = number
	while remaining >= value	
		numeral << numeralToAppend
		remaining -= value
	end
	remaining
end









