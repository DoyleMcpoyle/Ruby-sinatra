require 'sinatra'
require 'sinatra/reloader'

require './greeter'
also_reload './greeter'

# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  @greeter.quote params[:tag]
end

# default /quote route
get '/quote' do
  @greeter.quote
end



# # before filter
# before do
#   @greeter = Greeter.new
# end

# # our application's routes
# get '/hi' do
#   @greeter.greet
# end

# # return quotes matching a tag
# get '/quote/:tag' do
#   raise "tag must not be anything but 'life'" if params[:tag] != 'life'
#   @greeter.quote params[:tag]
# end

# # default /quote route
# get '/quote' do
#   @greeter.quote
# end





























# get '/quote/:tag' do
#   quotes = {
#     :life => [
#       "The best revenge is massive success.",
#       "The best is yet to come." 
#     ],
#     :love => [
#       "....A simple I love you means more than money....",
#       "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
#     ]
#   }

#   quotes[params[:tag].to_sym]
# end
