require 'rails_helper'

RSpec.describe Contract, type: :model do
  subject {
    described_class.new(location: "Salon de eventos pepa")
  }
  

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without location" do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a name location than 10 characters' do
    subject.location = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a location shorter than 3 characters' do
    subject.location = 'Do'
    expect(subject).to_not be_valid
  end
end
