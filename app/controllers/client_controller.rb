require_relative('../services/s3')

class ClientController < ApplicationController
  def getFile
    s3 = S3.new
    puts s3.getFiles
    
    render json: "File name is: #{params[:fileName]}"
  end

  def getAllFiles
    s3 = S3.new

    begin
      data = s3.getFiles()

      render json: data, status: 200
    rescue => exeption
      render json "There was some error: #{exeption.class}", status: :bad_request
    end
  end

  def sendFile
    render json: 'this is a post'
  end
end
