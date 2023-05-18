require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:comedian) { Comedian.create(first_name: "Test2", last_name: "Test2L", id_number: 123456789, level: 1) }
  subject{
    described_class.new(name: "Evento1",
                        comedian: comedian
                        )
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
