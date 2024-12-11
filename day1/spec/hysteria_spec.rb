# frozen_string_literal: true
require_relative "../hysteria.rb"

example_list = [[3, 4],
                [4, 3],
                [2, 5],
                [1, 3],
                [3, 9],
                [3, 3]]

left_list = get_left_list(example_list)
right_list = get_right_list(example_list)
sorted_left_list = left_list.sort
sorted_right_list = right_list.sort

describe "Historian Hysteria" do
  describe "Get smallest numbers" do
    it "returns the smallest number from the left list" do
      expect(get_smallest_number(left_list)).to eq(1)
    end
    it "returns the smallest number from the right list" do
      expect(get_smallest_number(right_list)).to eq(3)
    end
  end

  describe "Get left and right lists" do
    it "return the left list" do
      expect(get_left_list(example_list)).to eq([3,4,2,1,3,3])
    end

    it "return the right list" do
      expect(get_right_list(example_list)).to eq([4,3,5,3,9,3])
    end
  end

  describe "left list" do
    it "return the smallest number" do
      expect(get_number_from(1, left_list)).to eq(1)
    end

    it "return the second smallest number" do
      expect(get_number_from(2, left_list)).to eq(2)
    end
  
    it "return the third smallest number" do
      expect(get_number_from(3, left_list)).to eq(3)
    end
  end

  describe "right list" do
    it "return the smallest number" do
      expect(get_number_from(1, right_list)).to eq(3)
    end

    it "return the second smallest number" do
      expect(get_number_from(2, right_list)).to eq(3)
    end
  
    it "return the third smallest number" do
      expect(get_number_from(3, right_list)).to eq(3)
    end
  end

  describe "how far apart" do
    it "return total distance between left and right list" do
      expect(sum_distances(sorted_left_list, sorted_right_list)).to eq(11)
    end

    it "return total distance between left and right list" do
      expect(get_total_distance(left_list, right_list)).to eq(11)
    end
  end
end
