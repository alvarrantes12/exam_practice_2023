require 'rails_helper'

RSpec.describe Manager, type: :model do
  subject {
    described_class.new(first_name: "Harley",
                        last_name: "Davison")
  }

  it "valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
end