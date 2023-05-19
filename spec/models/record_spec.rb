require 'rails_helper'

RSpec.describe Record, type: :model do
  subject{
    described_class.new(version: "Version1")
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without version" do
    subject.version = nil
    expect(subject).to_not be_valid
  end
end
