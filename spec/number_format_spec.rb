require 'spec_helper'
require 'number_format'

describe NumberFormat do
  subject { NumberFormat.currency_formatted(num) }

  context "an integer" do
    let(:num) { 100 }

    it { should == "$100.00" }
  end

  context "a float" do
    let(:num) { 100.5 }

    it { should == "$100.50" }
  end

  context "handles nil as zero" do
    let(:num) { nil }

    it { should == "$0.00" }
  end
end
