require 'json'
require 'sinatra'
require 'data_mapper'
require 'dm-migrations'

DataMapper.setup(:default, 'mysql://adminzaUsasi:7GkIjLepT8l4@127.0.250.1:3306/cloneapi')
 

require './models/init' 
require './routes/init'

DataMapper.finalize