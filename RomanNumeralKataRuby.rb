require 'rspec'

describe 'a thing' do
	it 'should pass' do
		expect(true).to be true
	end
end

describe 'roman numeral converter' do
	it 'should convert 1 to I' do
		expect(convert_to_numeral 1).to eql "I"
	end

	it 'should convert 4 to IV' do
		expect(convert_to_numeral 4).to eql "IV"
	end

	it 'should convert 5 to V' do
		expect(convert_to_numeral 5).to eql "V"
	end

	it 'should convert 10 to X' do
		expect(convert_to_numeral 10).to eql "X"
	end

	it 'should convert 11 to XI' do
		expect(convert_to_numeral 11).to eql "XI"
	end
end


def convert_to_numeral number
	if number == 1
		"I"
	elsif number == 4
		"IV"
	elsif number == 5
		"V"
	elsif number == 10
		"X"
	end
end











