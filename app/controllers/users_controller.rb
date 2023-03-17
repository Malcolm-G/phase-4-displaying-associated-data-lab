class UsersController < ApplicationController
    def show
        id = params[:id]
        user = User.find(id)
        render json: user, include: :items
    end
end
