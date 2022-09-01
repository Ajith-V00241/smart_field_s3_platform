class Forest::Car
    # project under: platform-admin@credavenue.com
    include ForestLiana::Collection
  
    collection :Car
    field :fullname, type: 'String' do
        "#{object.model} #{object.make}"
    end

    field :pan, type: ['String'] do
        s1 = @bucket.object( 'sample_pan1.jpeg' ).presigned_url(:get)
        # s2 = @bucket.object( 'sample_pan3.jpeg').presigned_url(:get)
        # s3 =  @bucket.object( 'sample_pan4.jpeg' ).presigned_url(:get)
        s1
    end
    field :gst, type: ['String'] do

        credentials =  Aws::Credentials.new( $all_app['AWS_ACCESS_KEY'], $all_app['AWS_SECRET_KEY'] )
        @s3_resource = Aws::S3::Resource.new( credentials: credentials, region: $all_app['AWS_REGION'] )
        @bucket = @s3_resource.bucket( 'int-fi-info-dms-ap-south-1-090228812041' )
    
        # s1 = @bucket.object( 'sample_pan1.jpeg' ).presigned_url(:get)
        s2 = @bucket.object( 'sample_pan3.jpeg').presigned_url(:get)
        # s3 =  @bucket.object( 'sample_pan4.jpeg' ).presigned_url(:get)
        s2
    end
    field :arn, type: ['String'] do

        credentials =  Aws::Credentials.new( $all_app['AWS_ACCESS_KEY'], $all_app['AWS_SECRET_KEY'] )
        @s3_resource = Aws::S3::Resource.new( credentials: credentials, region: $all_app['AWS_REGION'] )
        @bucket = @s3_resource.bucket( 'int-fi-info-dms-ap-south-1-090228812041' )
    
        # s1 = @bucket.object( 'sample_pan1.jpeg' ).presigned_url(:get)
        # s2 = @bucket.object( 'sample_pan3.jpeg').presigned_url(:get)
        s3 =  @bucket.object( 'sample_pan4.jpeg' ).presigned_url(:get)
        s3
    end

    action 'Approve Pan', type: 'single'
    action 'Reject Pan', type: 'single'
    action 'Approve GST', type: 'single'
    action 'Reject GST', type: 'single'
    action 'Approve ARN', type: 'single'
    action 'Reject ARN', type: 'single'
    
end