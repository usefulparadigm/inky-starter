require 'bundler/setup'
require 'sinatra'
require_relative 'lib/tilt/inky'

Tilt.register Tilt::InkyTemplate, :inky

helpers do
  def inky(*args) render(:inky, *args) end
end

get '/:page?' do
  page = params[:page] || :index
  inky page.to_sym, :layout_engine => :erb
end

run Sinatra::Application