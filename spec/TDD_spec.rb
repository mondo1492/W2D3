require 'TDD'
require 'rspec'

describe "My_Unique" do
  before(:each) { @arr = [1,2,1,3,3] }

  it "Returns a new array" do
    expect(my_uniq(@arr)).to_not be(@arr)
  end

  it "Remove Duplicates From Original Array" do
    expect(my_uniq(@arr)).to eq([1,2,3])
  end
end

describe "Two_sum" do
  before(:each) { @arr = [-1, 0, 2, -2, 1] }

  it 'is in correct order' do
    expect(@arr.two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'finds all pairs' do
    expect(@arr.two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'returns an empty array when no pairs found' do
    expect([].two_sum).to eq([])
    expect([2, 4, 5, 6].two_sum).to eq([])
  end
end

describe "my_transpose" do
  let(:arr) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
  let(:arr_transposed) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }
  it "transposes a 2-d array" do
    expect(my_transpose(arr)).to eq(arr_transposed)
  end
end

describe "stock_picker" do
  let(:arr) { [4,2,5,2,7,9,2] }
  let(:arr2) { [9,4,2,5,2,7,2] }
  it "returns array of size 2 (pair)" do
    expect(stock_picker(arr)).to be_a(Array)
    expect(stock_picker(arr).length).to eq(2)
  end
  it "output most profitable pair" do
    expect(stock_picker(arr)).to eq([1, 5])
  end
  it "buy stock before selling a stock" do
    expect(stock_picker(arr2)).to eq([2,5])
  end


end
