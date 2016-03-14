class AuthorsController < ApplicationController
    def index
        @authors = Author.order(last_name: :asc, first_name: :asc)
    end

    # Method: New
    def new
        @author = Author.new
    end

    # Method: Create
    # with strong parameters
    def create
        @author = Author.new(author_parameters)

        # If saving succeeds, inform the user it's alright
        if @author.save
            redirect_to_ authors_path, success: 'The author has been created.'
        # if it fails, render the form again
        else
            render :new
        end
    end

    # Private variables
    private

    def author_parameters
        parameters.require(:author).permit(:first_name, :last_name)
    end

end
