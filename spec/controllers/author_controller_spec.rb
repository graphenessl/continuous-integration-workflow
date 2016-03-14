# First we need to add this, in order to use "rspec"
require 'rails_helper'

# Then we describe what the controller does
describe AuthorsController do

    #Now we are describing all the methods and what they do

    # 1. Method: Index
    describe 'GET #index' do
        # check that they array is populatede with all AuthorsController
        it 'populates the array with all authors'
            get :Index
            expect(assigns(:authors).count).to eq(Author.count)
        end
    end
end
