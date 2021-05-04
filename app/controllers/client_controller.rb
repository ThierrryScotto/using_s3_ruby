require_relative('../services/s3')

class ClientController < ApplicationController
  def getFile
    begin
      s3 = S3.new
      file = s3.getFile(params['fileName'])

    rescue => exeption
      render json: "There was some error: #{exeption.class}", status: :bad_request
    end
    
    render json: file, status: 200
  end

  def getAllFiles
    begin

      s3 = S3.new
      data = s3.getFiles()

      render json: data, status: 200
    rescue => exeption
      render json: "There was some error: #{exeption.class}", status: :bad_request
    end
  end

  def sendFile
    render json: 'this is a post'
  end
end
