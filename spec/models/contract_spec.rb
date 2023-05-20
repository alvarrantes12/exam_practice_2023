require 'rails_helper'

RSpec.describe Contract, type: :model do
  subject {
    described_class.new(location: "Heredia")
  }

  it "valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without location" do
    subject.location = nil
    expect(subject).to_not be_valid
  end
end