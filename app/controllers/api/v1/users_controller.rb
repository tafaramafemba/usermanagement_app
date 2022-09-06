class Api::V1::UsersController < ApplicationController
  def getUsers
    
  end

  def addUser
    user = User.new(username: params[:username], email: params[:email], password_digest: params[:password_digest])
    if user.save
      render json: {status: 'SUCCESS', message:'User added successfully', data:user}, status: :ok
    else
      render json: {status: 'ERROR', message:'User not added', data:user.errors}, status: :unprocessable_entity
    end    
  end
end
