require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', author: 'person', price: '10', date: Date.current)
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a date' do
        subject.date = nil
        expect(subject).not_to be_valid
    end
end