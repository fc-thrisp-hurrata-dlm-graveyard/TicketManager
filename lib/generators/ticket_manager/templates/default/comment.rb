module Comment
  include DataMapper::Resource
  is :remixable

  property :id,            Serial
  property :body,          Text, :length=>1..300
  property :created_at,    DateTime
  property :created_by,    String
  property :commentfilter, String #useful to filter comments by situation  
 
end
