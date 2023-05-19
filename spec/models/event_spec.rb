require 'rails_helper'

RSpec.describe Event, type: :model do
  subject {
    described_class.new(name: "Evento",
                        comedian: Comedian.create(first_name: "Alberto", last_name: "Álvarez", id_number: 67891234, level: 1))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
