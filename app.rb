require 'sinatra'
require './config/database'
Dir['./models/*.rb'].each { |file| require file }
require './services/file_importer'

get '/' do
  erb :index
end

post '/upload' do
  file = params[:file][:tempfile]
  path = "./uploads/#{params[:file][:filename]}"

  File.open(path, 'wb') do |f|
    f.write(file.read)
  end

  @total = FileImporter.import(path)

  erb :index
end