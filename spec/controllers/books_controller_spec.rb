require 'rails_helper'

RSpec.describe BooksController do
  # What the method does
  describe 'POST #create' do
    # Message
    it 'saves the release date' do
      # Logic
      release_date = Date.today
      post :create, book: { isbn:'1234567890123', title 'Harry Potter', release_date: release_date }
      expect(Book.find_by(isbn: '1234567890123').release_date).to eq(release_date))
    end
  end
end
