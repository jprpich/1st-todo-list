require 'sinatra'
require 'json'
require 'make_todo'
require 'httparty'


get '/tareas' do 	
	@tareas = Tarea.all
	erb :index
end

post '/tareas' do	
	@tarea = Tarea.create(params[:tarea])
	puts @tarea
	redirect '/tareas'
end

get '/tareas/:id' do
	@tarea = Tarea.update(params[:id])
	puts "tareass"
	redirect '/tareas'
end