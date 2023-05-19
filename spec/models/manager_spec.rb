require 'rails_helper'

RSpec.describe Manager, type: :model do
  subject{
    described_class.new(first_name: "Manager1", last_name: "ManagerLastName1")
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

  it "is not valid with a first_name with less than 5 lettres" do
    subject.first_name = "aaaa"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with less than 5 lettres" do
    subject.last_name = "aaaa"
    expect(subject).to_not be_valid
  end
end
