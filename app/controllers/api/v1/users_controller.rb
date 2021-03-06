class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all

        render json: @users
    end

    def show
         render json: @user
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def find
        @user = User.find_by(email: params[:user][:email])
        
        if @user
          render json: @user
        else
          @errors = @user.errors.full_messages
          render json: @errors
        end
      end
    
      # PATCH/PUT /users/1
      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /users/1
      def destroy
        user =  User.find(params[:id])
        
        user.destroy ? (render json: user.id) : (render json: {status: 500, message: 'User cannot be deleted'})
      end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :age, :rank)
    end
end
