require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
  @reversed_string = original_string.reverse
 
    erb :reversed
  end


    # Write your code here!
  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
 
    erb :friends
      <% @friends.each do 
      |friend| %>
      <h2><%= friend %></h2>
   <%end%>
end
