require 'rails_helper'

RSpec.describe Record, type: :model do
  subject {
    described_class.new(version: "Help",
                        comedian: Comedian.create(first_name: "Comedian", last_name: "Comed2", id_number: 2082623, level: 0),
                        contract: Contract.create(location: "Salon de eventos pepa")
                        )
  }
  

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without version" do
    subject.version = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a version longer than 10 characters' do
    subject.version = 'aaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it "is not valid without comedian"do
    subject.comedian = nil
    expect(subject).to_not be_valid
  end 

  it "is not valid without contract"do
    subject.contract = nil
    expect(subject).to_not be_valid
  end 
  
  
  it 'is not valid with a version shorter than 3 characters' do
    subject.version = 'Do'
    expect(subject).to_not be_valid
  end


end
