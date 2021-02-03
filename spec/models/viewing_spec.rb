require 'rails_helper'

RSpec.describe Viewing, type: :model do
  context 'validation' do
    subject do
      User.create(name: 'John Smith', email: 'john_smith@testmail.com')
      House.create(location: '123 Fake Street', description: 'A lovely, fictional property, perfect for writing model tests.', bedrooms: 4, bathrooms: 2)
      described_class.new(user_id: User.last.id, house_id: House.last.id, when: '20th September 2022 12:00:00')
    end

    it 'is valid when requirements are met' do
      expect(subject).to be_valid
    end

    it 'is invalid without a user_id present' do
      subject.user_id = nil
      expect(subject).not_to be_valid
    end
    
    it 'is invalid without a house_id present' do
      subject.house_id = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a when attribute present' do
      subject.when = nil
      expect(subject).not_to be_valid
    end
    
    it 'is invalid if the when attribute is a date in the past' do
      subject.when = '1st January 1900 12:00:00'
      expect(subject).not_to be_valid
    end
  end
end
