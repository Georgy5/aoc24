# frozen_string_literal: true
require_relative "../hysteria.rb"

list = <<~LIST
  3   4
  4   3
  2   5
  1   3
  3   9
  3   3
LIST

left_list = [3, 4, 2, 1, 3, 3]
right_list = [4, 3, 5, 3, 9, 3]

describe "Historian Hysteria" do
  describe "Get smallest numbers" do
    it "returns the smallest number from the left list" do
      expect(get_smallest_number(left_list)).to eq(1)
    end
    it "returns the smallest number from the right list" do
      expect(get_smallest_number(right_list)).to eq(3)
    end
  end
end
