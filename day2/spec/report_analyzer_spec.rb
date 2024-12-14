require_relative "../report_analyzer.rb"

safe_report = "7 6 4 2 1"
unsafe_report = "1 2 7 8 9"

describe "Red-Nosed Reports" do
  describe "#is_safe?" do
    it "returns a report found to be safe" do
      expect(is_safe?(safe_report)).to eq(true)
    end

    it "returns a report found to be unsafe" do
      expect(is_safe?(unsafe_report)).to eq(false)
    end
  end
end
