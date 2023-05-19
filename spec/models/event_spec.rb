require 'rails_helper'

RSpec.describe Event, type: :model do
    subject {
      described_class.new(name: "VIVA Fiesta",
                          comedian: Comedian.create(first_name: "Robert", last_name: "Trujillo", id_number: 12345678))
    }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end  

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without comedian" do
    subject.comedian = nil
    expect(subject).to_not be_valid
  end
end
