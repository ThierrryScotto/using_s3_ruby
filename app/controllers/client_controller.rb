class ClientController < ApplicationController
  def getFile
    render json: "File name is: #{params[:fileName]}"
  end

  def getAllFiles
    render json: 'return all'
  end

  def sendFile
    render json: 'this is a post'
  end
end
