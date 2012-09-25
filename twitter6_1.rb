#encoding: utf-8

require 'open-uri'
require 'json'
require 'rubygems'


#statuses_id
id = '221786339564191744'

url = "http://api.twitter.com/1/statuses/show/#{id}.json"
json = URI(url).read
hash = JSON.parse(json)

puts hash["text"]


#RTとお気に入りの数字を取得
url2 = "http://twitter.com/matsumur/status/"+id
doc = open(url2).read


puts "RT：" + doc.match(/がリツイート"
            >
              <strong>/).post_match.match(/<\/strong>件/).pre_match

puts "お気に入り：" + doc.match(/に登録"
            >
              <strong>/).post_match.match(/<\/strong>/).pre_match


puts "お気に入りに登録した人：" + doc.match(/" original-title="/).post_match.match(/" title="/).pre_match
