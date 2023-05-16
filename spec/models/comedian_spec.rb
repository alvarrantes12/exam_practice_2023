require 'rails_helper'

RSpec.describe Comedian, type: :model do
 
    subject {
    described_class.new(first_name: "Springfiel",
                        last_name: "Wikipediasxesrd",
                        id_number: 279234523
                         )
    }
  
    it "it validate isnt empty" do
      expect(subject).to be_valid
    end
  
    it "it validates it is a name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end
  
    it "it validates it is a last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "it validates it is a id" do
      subject.id_number = nil
      expect(subject).to_not be_valid
    end

    it "it validates it is a name with 10 characters" do
      subject.first_name = "djeuifhrgj"
      expect(subject).to be_valid
    end
  
    it "it validates it is a last_name with 15 characters" do
      subject.last_name = "fmeijfrihgendjufg"
      expect(subject).to_not be_valid
    end
  
    it "it validates it is a id_name with 8-10 characters" do
      subject.id_number = 123456789
      expect(subject).to be_valid
  end
  end



