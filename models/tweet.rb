class Tweet
  include DataMapper::Resource

  property :id,           Serial
  property :tweet_id,    Integer, :unique => true
  property :tweet,    	  Text
  property :owner,		  String
end