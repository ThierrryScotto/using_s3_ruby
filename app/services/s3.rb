require 'aws-sdk'
require 'dotenv'

Dotenv.load

Aws.config.update(
  region: 'sa-east-1',
  credentials: Aws::Credentials.new(ENV['ACCESS_KEY'], ENV['SECRET_KEY'])
)

class S3

  def initialize(bucketName=nil)
    s3 = Aws::S3::Resource.new

    @bucket = s3.bucket(ENV['BUCKET_NAME'])
  end

  def getFiles
    data = @bucket.objects.each do |obj|
      "#{obj.key} => #{obj.etag}"
    end

    data
  end
end