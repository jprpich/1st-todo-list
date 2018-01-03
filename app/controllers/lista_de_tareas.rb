require 'sinatra'
require 'make_todo'
require 'pry'
get '/' do
	@tareas = Tarea.all
	erb :index
end

post '/' do
	puts params
	@tarea = Tarea.create(params[:tarea])
	redirect "/"
end

get '/edit/:id' do
	@tarea =   Tarea.update(params[:id])
	redirect "/"
end

get '/delete/:id' do
	@tarea =   Tarea.destroy(params[:id])
	redirect "/"
end