require File.expand_path(File.dirname(__FILE__) + '../../../lib/mod10')

describe Mod10 do

  it "sums numbers in a digit" do
    Mod10.sum_of(10).should == 1
    Mod10.sum_of(22).should == 4
    Mod10.sum_of(99).should == 18
  end

  it "doubles numbers according to luhn" do
    Mod10.luhn_doubled(4992739871).should == [4,18,9,4,7,6,9,16,7,2]
    Mod10.luhn_doubled(123).should == [2,2,6]
  end

  it "provides a valid control number based on a number" do
    Mod10.mod10(123).should == 0
    Mod10.mod10(12345123451234).should == 8
    Mod10.mod10(4992739871).should == 6
    Mod10.mod10(23994700000053866078).should == 3
    Mod10.mod10(199600).should == 8
  end

  it "validates valid numbers" do
    Mod10.valid?(123451234512348).should be_true
    Mod10.valid?(1996008).should be_true
    Mod10.valid?(1230).should be_true
  end

end
