#!/usr/bin/env ruby
require "sinatra"

set :port, 80
set :views, '.'

get '/' do
  haml :nohex, :locals => { :color => '' } 
end

get '/:hex' do
  display = params[:hex] =~ /^#?([a-f0-9]{6}|[a-f0-9]{3})$/ ? :hex : :nohex
  haml display, :locals => { :color => params[:hex] } 
end
