require 'rails_helper'

RSpec.describe Comedian, type: :model do
  subject {
    described_class.new(first_name: "Robert",
                        last_name: "Trujillo",
                        id_number: 1234567891,
                        level: 1,
                        manager: Manager.create(first_name: "Manuel", last_name: "Rodriguez"))
  }

  it "is valid with valid attributes" do
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

  it "is not valid without manager" do
    subject.manager = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a first_name with more than 10 letters" do
    subject.first_name = "asdfghjklvsvsvsvsfg"
    expect(subject).to_not be_valid
  end

  it "is not valid with a last_name with more than 15 letters" do
    subject.last_name = "asdfghjklhgfdssdfadfsvfdfsgfdsb"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with less than 1000000 numbers" do
    subject.id_number = "1000000"
    expect(subject).to_not be_valid
  end

  it "is not valid with a id_number with more than 9999999999 numbers" do
    subject.id_number = "9999999999999"
    expect(subject).to_not be_valid
  end
end
