require "cryptile/version"

module Cryptile
  def self.convert_base(string, from_base, to_base)
    converted_string = ""
    if to_base === 2 and from_base === 16
      string.each_char { |char| converted_string << add_leading_zeros(char.to_i(from_base).to_s(to_base), 4)}
    elsif to_base === 16 and from_base === 2
      string.scan(/.{1,4}/).each { |char_group| converted_string << char_group.to_i(from_base).to_s(to_base) }
    end
    converted_string
  end
  
  private
  def self.add_leading_zeros(binary_string, desired_length)
    required_padding = desired_length - binary_string.length
    required_padding > 0 ? zeros(required_padding) + binary_string : binary_string
  end
  
  def self.zeros(length)
    start = ""
    length.times { start << '0'}
    start
  end
end
