require_relative '../solver'

describe Solver do
    it 'should return the factorial of N' do
        expect (factorial(3)).to eq(6)
    end

    it 'should return the reversed string' do
        expect (reverse('hello')).to eq('olleh')
    end

    context 'Fizzbuzz test' do
        it 'should return fizz if N is divisible by 3' do
            expect (fizzbuzz(6)).to be('fizz')
        end
        it 'should return buzz if N is divisible by 5' do
            expect (fizzbuzz(10)).to be('buzz')
        end
        it 'should return fizzbuzz if N is divisible by 3 and 5' do
            expect (fizzbuzz(15)).to be('fizzbuzz')
        end
        it "should return 'N' if N is not divisible by 3 or 5" do
            expect (fizzbuzz(8)).to be('8')
        end
    end
end
