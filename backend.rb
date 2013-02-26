#!/usr/bin/env ruby
require "sinatra"

set :port, 81
set :views, '.'

get '/:hex' do
  display = params[:hex] =~ /^#?([a-f0-9]{6}|[a-f0-9]{3})$/ ? :hex : :nohex
  haml display, :locals => { :color => params[:hex] } 
end
