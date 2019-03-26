require 'sinatra'
require 'sinatra/reloader'

# If request is /, display main page
get '/' do
  erb :index
end

# Display results
get '/display' do
  # Display error message
  if params.length != 3 or params[:true] == nil or params[:false] == nil or params[:size] == nil
    status 404
    return erb :error
  end

  # IF args are empty, assign default values
  if params[:true] == ''
    params[:true] = 'T'
  end
  if params[:false] == ''
    params[:false] = 'F'
  end
  if params[:size] == ''
    params[:size] = '3'
  end

  table = Array.new
  n = params[:size].to_i

  # Start loop
  (2**n).times do |i|
    expression = Array.new
    logical_AND = true
    logical_OR = false

    n.times do |j|
      if((i/(2**(n-j-1)))%2 == 1)
				logical_OR = true
				expression << true
			else
				logical_AND = false
				expression << false
			end
		end
		expression << logical_AND
		expression << logical_OR
		expression << !logical_AND
    expression << !logical_OR
		table << expression
  end

  # Display proper results
  erb :display, :locals => { trueSymbol: params[:true], falseSymbol: params[:false], size: params[:size], table: table}
end

# If we have a URL other than one specified
not_found do
  status 404
  erb :error
end
