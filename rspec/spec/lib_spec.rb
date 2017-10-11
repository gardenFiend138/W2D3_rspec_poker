require 'lib'
# require 'rspec'

RSpec.describe Array do
subject(:arr) { [1,2,2,3] }
  describe '#remove_dups' do
    context 'removing dupes should' do
      it 'removes duplicates elements in the array' do
        expect(arr.remove_dups).to eq([1,2,3])
      end
      it "doesn't mutate the original array" do
        expect(arr).to eq([1,2,2,3])
      end
    end
  end
end

RSpec.describe Array do
  subject(:arr) { [-1, 0, 2, -2, 1, 3, -3, -3] }

    describe "#two_sum" do
      context 'two sum should' do
        it 'returns indicies of elements that sum to zero' do
          expect(arr.two_sum).to eq([[0,4], [2,3], [5,6], [5,7]])
        end
        it 'pairs should be sorted smaller index before bigger index' do
          expect(arr.two_sum).to eq([[0,4], [2,3], [5,6], [5,7]])
        end
      end
    end
end

RSpec.describe Array do
  subject(:arr) {  [[0,1,2], [3,4,5], [6,7,8]] }

    describe '#my_transpose' do
      it "converts between the row-oriented and column-oriented array" do
        expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
      end
    end
end
