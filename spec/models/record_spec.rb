require 'rails_helper'

RSpec.describe Record, type: :model do
  subject{
    described_class.new(version: "Version1",
                        comedian: Comedian.create!(first_name: "Pepe",
                        last_name: "Guarnizo",
                        id_number: 123456788,
                        level: 0),
                        contract: Contract.create!(location: "Location2"))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without version" do
    subject.version = nil
    expect(subject).to_not be_valid
  end
end
