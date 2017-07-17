#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  #Requirement 1 If I give you an empty string, I want your calculator to answer 0.
  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  #Requirement 2 If I give you “0” I want your calculator to produce the value 0, and a “5” should produce the value 5.
  it "returns 5 for string '5'" do
    expect(StringCalculator.add("5")).to eql(5)
  end
  ####Requirement 3 If I give you “1,2”, it should produce the value 3, and “7,9” should produce the value 16.

  it "returns 3 if given '1,2'" do
    expect(StringCalculator.add("1,2")).to eql(3)
  end

  it "returns 16 if given '7,9'" do
    expect(StringCalculator.add("7,9")).to eql(16)
  end
  ####Requirement 4 If I give you two strings of digits separated by a comma, I want your calculator to answer with the sum of those numbers. Some good test cases are “12,45” should produce the value 57, and “42,159” should produce the value 201.
  it "returns 57 if given '12,45'" do
    expect(StringCalculator.add('12,45')).to eql(57)
  end

  ####Requirement 5 If I give you any number of strings of digits separated by commas, I want your calculator to answer with the sum of those numbers. Some good test cases are “1558,2,2442” should produce the value 4002, “15,22,45,79” should produce the value 161, and "2" should produce the value 2.
  it "returns 4002 if given '1558,2,2442'" do
    expect(StringCalculator.add('1558,2,2442')).to eql(4002)
  end

  ####Requirement 6 I forgot, sometimes I’ll give you a newline character instead of a comma. You should treat it the same as a comma. For instance “1\n2,3” should produce the value 6. (Why might your solution produce the value 4?)
  it "returns 6 if given '1\n2,3'" do
    expect(StringCalculator.add("1\n2,3")).to eql(6)
  end

  ####Requirement 7 On second thought, maybe we should make it so delimiters can be set in the input. Whenever I give you two slashes followed by a character on the first line of the input, use that character as the delimiter. For instance, “//;\n2;5” should produce the value 7. (Why might your solution produce the value 2?)
  it "returns 7 if given '//;\n2;5'" do
    expect(StringCalculator.add("//;\n2;5")).to eql(7)
  end

  ####Requirement 8 Oh damn, I forgot about negative numbers. They’re a problem, so let’s just throw an exception when you see one in the input. Note the use of "raise" and the the RSpec "raise_error" matcher for this step. Look them up and learn them. From this point on, I'm leaving it to you to consider and decide upon appropriate test cases.
  it "raises an error if a negative value is inputted" do
    expect(StringCalculator.add('-5,7')).to raise_error(StandardError)
    # expect { raise StandardError }.to raise_error
  end

  ####Requirement 9 The exception message would be a good place to watch for problems, so let’s put a list of the negative values in there, but only when there are multiple negatives in the string.

  ####Requirement 10 Sometimes the input gets a little garbled, so let’s ignore any numbers larger than 1000.

  ####Requirement 11 Ok, we’re seeing some strange inputs recently. Can we make it so delimiters can be multiple characters long? Let’s agree the first line will have square brackets around the delimiter like this: “//[delimiter string]”

  ####Requirement 12 Celebrate.
  # more tests go here
end
