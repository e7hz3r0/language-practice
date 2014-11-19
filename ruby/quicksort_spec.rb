require File.expand_path('../quicksort', __FILE__)

describe 'quicksort' do
  describe 'using arrays' do
    it 'should properly sort an array of 10 elements' do
      array = [10, 2, 1, 7, 9, 8, 0, 4, 6, 5, 3]
      expect(Sorting::quicksort(array)).to eq([0,1,2,3,4,5,6,7,8,9,10])
    end

    it 'should return the exact array of 1 item' do
      array = [10]
      expect(Sorting::quicksort(array)).to eq([10])
    end

    it 'should return an empty array when given one' do
      array = []
      expect(Sorting::quicksort(array)).to eq([])
    end
  end

  describe 'in-place' do
    it 'should properly sort an array of 10 elements' do
      array = [10, 2, 1, 7, 9, 8, 0, 4, 6, 5, 3]
      expect(Sorting::in_place_quicksort(array)).to eq([0,1,2,3,4,5,6,7,8,9,10])
    end

    it 'should return the exact array of 1 item' do
      array = [10]
      expect(Sorting::in_place_quicksort(array)).to eq([10])
    end

    it 'should return an empty array when given one' do
      array = []
      expect(Sorting::in_place_quicksort(array)).to eq([])
    end
  end
end
