class UsersController < ApplicationController

    def index
        users = User.all
        render json: {message: users}
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user , include: [:scores]
    end 

    def create 
        new_user = User.new(user_params) 
        new_user.save
        render json: {message: "#{new_user.id} #{new_user.username}"} 
    end 

    def update 
        target_user = User.find_by(id: params[:id])
        target_user.update(username: user_params[:username])
        target_user.save
        render json: {message: "Updated!"} 
    end 

    def destroy 
        found = User.find_by(id: params[:id])
        found.scores.each{|score| score.destroy}
        found.destroy
        render json: {message: 'destroyed'}
    end 

    def user_params 
        params.permit(:username) 
    end 

end
