require 'json'
require 'open-uri'

class Api::V1::BaseController < ActionController::Base

  puts "Escolha uma linguagem de programação ?"
  language = gets.chomp
  url = " https://api.github.com/search/code?q=addClass+in:file+language:#{language}+repo:#{language}/#{language} "
  raw_json = open(url).read
  user = JSON.parse(raw_json)
  puts "A #{language} tem #{user["public_repos"]} repositórios"

end

