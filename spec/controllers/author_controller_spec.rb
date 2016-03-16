# First we need to add this, in order to use "rspec"
require 'rails_helper'

# Then we describe what the controller does
describe AuthorsController do

    #Now we are describing all the methods and what they do

    # 1. Method: Index
    describe 'GET #index' do
        # check: that they array is populatede with all AuthorsController
        it 'populates the array with all authors'
            get :index
            expect(assigns(:authors).count).to eq(Author.count)
        end

        # check: run the correct teplate
        it 'renders the index template' do
            get :index
            expect(response).to render_template(:index)
        end
    end

    # 2. Method: New
    describe 'GET #new' do
        it 'sets an author variable' do
            get :new
            expect(assigns(auhor)).to be_a_new(Author)
        end

        it 'render the new template' do
            get :new
            expect(response).to render_template(:new)
        end
    end
    
end