require_relative "./test_helper"

describe Simple do
  it "has a version number" do
    ::Simple::VERSION.wont_be_nil
  end
end
