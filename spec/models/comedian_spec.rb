require 'rails_helper'

RSpec.describe Comedian, type: :model do
  subject {
    described_class.new(first_name: "Comedian1",
                        last_name: "Comedian",
                        id_number: 12345678,
                        level: 0)
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

  it "is not valid without id_number" do
    subject.id_number = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without level" do
    subject.level = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more then 10 letters" do
    subject.first_name = "Comedian123"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more then 15 letters" do
    subject.last_name = "ComedianComedian"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less then 8 numbers" do
    subject.id_number = 1234567
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more then 10 numbers" do
    subject.id_number = 12345678910
    expect(subject).to_not be_valid
  end
end