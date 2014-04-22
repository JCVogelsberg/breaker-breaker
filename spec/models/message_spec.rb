require "spec_helper"


describe Message do
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
  it { should validate_presence_of :body }

end
