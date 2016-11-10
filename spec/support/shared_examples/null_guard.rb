RSpec.shared_examples "a null guard" do |attr, opts|
  let(:model) { described_class.new(attr => value) }
  let(:valid_value) { opts[:valid_value] }
  subject { model.send(attr) }

  context "given 'null'" do
    let(:value) { "null" }
    it { is_expected.to be_nil }
  end

  context "given a non-null value" do
    let(:value) { valid_value }
    it { is_expected.to eq valid_value }
  end
end
