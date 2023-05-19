require 'rails_helper'

RSpec.describe Comedian, type: :model do
  subject{
    described_class.new(first_name: "Franco",
                        last_name: "Escamilla",
                        id_number: 11111111,
                        level: 2,
                        manager: Manager.create(first_name: "David", last_name: "Hidalgo"))
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

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "zzzzzzzzzzz"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "zzzzzzzzzzzzzzzz"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less than 8 numbers" do
    subject.id_number = 1111111
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more than 10 numbers" do
    subject.id_number = 11111111111
    expect(subject).to_not be_valid
  end
end
