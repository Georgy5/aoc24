require_relative "../multiplier_scan.rb"

corrupted_memory_section =
"xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"

describe "Mull It Over" do
  describe "#sum_products" do
    it "returns a report found to be safe" do
      expect(sum_products(corrupted_memory_section)).to eq(161)
    end
  end
end
