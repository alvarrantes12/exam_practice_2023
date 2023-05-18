require 'rails_helper'

RSpec.describe History, type: :model do
  
  subject{
    described_class.new(version: "VersionTest",
                        comedian: Comedian.create(first_name: "Mario", last_name: "Alfaro", id_number: 102233444, level: 0, manager: Manager.create!(first_name: "Paolo", last_name: "Cerdas")),
                        contract: Contract.create!(location: "TestLocation")
                        )
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
    subject.contract= nil
    expect(subject).to_not be_valid
  end

end
