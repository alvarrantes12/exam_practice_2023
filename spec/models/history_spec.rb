require 'rails_helper'

RSpec.describe History, type: :model do

  subject{
    described_class.new(version: "VersionTest",
                        )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without versiom" do
    subject.version = nil
    expect(subject).to_not be_valid
  end

end
