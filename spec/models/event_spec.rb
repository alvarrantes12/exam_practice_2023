require 'rails_helper'

RSpec.describe Event, type: :model do
  subject{
    described_class.new(name: "Evento1",
                        comedian: Comedian.create!(first_name: "Pepe",
                        last_name: "Guarnizo",
                        id_number: 123456788,
                        level: 0))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
