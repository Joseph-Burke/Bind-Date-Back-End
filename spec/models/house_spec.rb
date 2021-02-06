require 'rails_helper'

RSpec.describe House, type: :model do
  context 'validation' do
    subject do
      described_class.new(location: '123 Fake Street',
                          description: 'A lovely, fictional property, perfect for writing model tests.',
                          bedrooms: 4,
                          bathrooms: 2)
    end

    it 'is valid when requirements are met' do
      expect(subject).to be_valid
    end

    it 'is invalid without a location present' do
      subject.location = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a description present' do
      subject.description = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a bedrooms attribute present' do
      subject.bedrooms = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a bathrooms attribute present' do
      subject.bathrooms = nil
      expect(subject).not_to be_valid
    end
  end
end
