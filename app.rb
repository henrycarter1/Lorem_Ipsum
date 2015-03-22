require 'bundler'
Bundler.require

get '/' do
  erb :main
end

post '/' do
  @v1 = params[:v1].to_i
  if @v1 > 62 or @v1 < 0 then erb :error
  else erb :generator
  end
end