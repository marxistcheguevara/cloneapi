get '/api/tweets' do
  Tweet.all.to_json
end

get '/api/tweets/:tweet_id' do
  tid = params[:tweet_id].to_i
  t = Tweet.first(:tweet_id => tid)
  if t.nil?
    halt 404
  end
  t.to_json
end

post '/api/tweets' do
  body = JSON.parse request.body.read
  t = Tweet.create(
    tweet_id:    body['tweet_id'],
    tweet:       body['tweet'],
    owner:       body['owner']
  )
  status 201
  t.to_json 
end


