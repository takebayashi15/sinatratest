require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
    content_type :json, :charset => 'utf-8'
    data = { message: "こんにちは。あなたは" + Sample.func+"人目の訪問者です"}
    data.to_json
end

class Sample
    @@count = 0
    def self.func
	@@count += 1
        return @@count.to_s
    end
end
