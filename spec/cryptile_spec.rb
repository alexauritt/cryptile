require 'helper'

module Cryptile
  describe "convert_base" do
    context "base 16 string to binary" do
      it "should convert single hex digit" do
        Cryptile.convert_base("d", 16, 2).should eq("1101")
        Cryptile.convert_base("5", 16, 2).should eq("0101")
      end
      
      it "should convert 4 hex digits and include leading zeros" do
        hex = "315c"
        Cryptile.convert_base(hex, 16, 2).should eq("0011000101011100")
      end
      
      it "should convert 6 binary to hex" do
        binary = "101111111000000101011100"
        Cryptile.convert_base(binary, 2, 16).should eq("bf815c")
      end
    end
    
    context "privates" do
      describe "zeros" do
        it "should return expected string" do
          Cryptile.send(:zeros, 5).should eq("00000")
        end
      end
    end
  end
end