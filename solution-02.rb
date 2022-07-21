require 'date'
require 'time'
require 'json'

# input "{\"time\":\"2022-06-17T05:52:39.787Z\"}"

def json_convert_to_local_time(input)
	unless input.nil?
		json = JSON.parse(input)
		dt = DateTime.parse(json['time'])
		p dt.strftime("%F %T %z")
	end
end

p "Please enter a date time json (format:  '{\"time\":\"2022-06-17T05:52:39.787Z\"}' )"
str = gets.chomp
date_time = json_convert_to_local_time(str)

p "==== date_time : #{date_time} ===="