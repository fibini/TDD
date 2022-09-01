require_relative '../solver'

describe Solver do
    it 'should return the factorial of N' do
        expect (factorial(3)).to eq(6)
    end
end