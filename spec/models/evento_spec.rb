require 'rails_helper'

RSpec.describe Evento, type: :model do
  let(:comedian) { Comedian.create(first_name: 'Comediante', last_name: 'Comed2', id_number: '2082623', level: 0 ) }
  subject {
    described_class.new(name: "Evento",
                        start_date: DateTime.now,
                        end_date: DateTime.now + 1.week,
                        comedian: comedian)
  }
  
  it "valid with valid attributes"do
    expect(subject).to be_valid
  end 
  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a name longer than 10 characters' do
    subject.name = 'aaaaaaaaaaaa'
    expect(subject).to_not be_valid
  end

  it 'is not valid with a name shorter than 3 characters' do
    subject.name = 'Do'
    expect(subject).to_not be_valid
  end

  it "is not valid without start_date"do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without end_date"do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end

end
