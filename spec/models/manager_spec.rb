require 'rails_helper'

RSpec.describe Manager, type: :model do
  subject {
    described_class.new(first_name: "Juan",
                        last_name: "Pedro")
  }

  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name longer than 10 characters' do
    subject.first_name = 'aaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name shorter than 3 characters' do
    subject.first_name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without first_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without valid last_name with more than 10 letters"do
    subject.last_name = "jaytcprqocy"
    expect(subject).to_not be_valid
  end

  it 'is not valid with a last_name shorter than 3 characters' do
    subject.last_name = 'Do'
    expect(subject).to_not be_valid
  end


end
