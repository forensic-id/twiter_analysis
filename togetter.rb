
require 'rubygems'
require 'open-uri'


url = "http://togetter.com/li/335253"
doc = open(url, "r:utf-8").read



while !a = doc.match(/fb-root/) do

puts doc.match(/<div class='tweet'>/).post_match.match(/a href/).pre_match

end
