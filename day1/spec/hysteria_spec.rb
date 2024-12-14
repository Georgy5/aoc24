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
  describe "Get left and right lists" do
    it "return the left list" do
      expect(get_left_list(example_list)).to eq([3,4,2,1,3,3])
    end

    it "return the right list" do
      expect(get_right_list(example_list)).to eq([4,3,5,3,9,3])
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

  describe "Similarity Score" do
    it "calculates total similarity score" do
      expect(get_similarity_score(left_list, right_list)).to eq(31)
    end
  end
end
