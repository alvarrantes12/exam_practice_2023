RSpec.describe Historical, type: :model do
  subject {
    described_class.new(version: "VersionHistorial",
                        comedian: Comedian.create(first_name: "Jhon",
                                                  last_name: "Lennon",
                                                  id_number: 12345678,
                                                  level: 1),
                        contract: Contract.create(location: "Mundial"))
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without version" do
    subject.version = nil
    expect(subject).to_not be_valid
  end
end