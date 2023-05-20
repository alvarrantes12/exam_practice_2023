require 'rails_helper'

RSpec.describe History, type: :model do
  subject {
    described_class.new(version: "1.2",
                        comedian: Comedian.create(first_name: "Kevin", last_name: "Mora", id_number: 12345678, level: 1,manager: Manager.create(first_name: "Harold", last_name: "Mora")),
                        contract: Contract.create(location: "Puntarenas, Costa Rica"))
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end  

  it "is not valid without version" do
    subject.version = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without comedian" do
    subject.comedian = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without contract" do
    subject.contract = nil
    expect(subject).to_not be_valid
  end

end