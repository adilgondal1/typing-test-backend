class ScoresController < ApplicationController

    def index
        scores = Score.all
        render json: scores , include: [:user]
    end

    def create 
        new_score = Score.new(value: score_params[:value], user_id: score_params[:user_id]) 
        new_score.save
        render json: {message: "New Score"} 
    end 
    
    def score_params 
        params.permit(:user_id, :value) 
    end 
end
