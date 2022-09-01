require_relative '../solver'

describe Solver do
  it 'should return the factorial of N' do
    factorial = Solver.new
    expect(factorial.factorial(3)).to eq(6)
    expect(factorial.factorial(0)).to eq(1)
    expect { factorial.factorial(-1) }.to raise_error(StandardError)
  end

  it 'should return the reversed string' do
    str_reverse = Solver.new.reverse('hello')
    expect(str_reverse).to eql('olleh')
  end

  context 'Fizzbuzz test' do
    fizzbuzz = Solver.new
    it 'should return fizz if N is divisible by 3' do
      expect(fizzbuzz.fizzbuzz(6)).to be('fizz')
    end
    it 'should return buzz if N is divisible by 5' do
      expect(fizzbuzz.fizzbuzz(10)).to be('buzz')
    end
    it 'should return fizzbuzz if N is divisible by 3 and 5' do
      expect(fizzbuzz.fizzbuzz(15)).to be('fizzbuzz')
    end
    it "should return 'N' if N is not divisible by 3 or 5" do
      expect(fizzbuzz.fizzbuzz(8)).to eq('8')
    end
  end
end
