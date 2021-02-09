require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation' do
    subject do
      described_class.create(name: 'John Smith', email: 'john_smith@testmail.com')
    end

    it 'is valid when requirements are met' do
      expect(subject).to be_valid
    end

    it 'is invalid without a name present' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a email present' do
      subject.email = nil
      expect(subject).not_to be_valid
    end
  end
end
