#encoding: utf-8


require 'open-uri'
require 'json'

url = "http://api.twitter.com/1/statuses/user_timeline/114456663.json"
json = URI(url).read

hash = JSON.parse(json)
  

hash.each { |str|
  day = str["created_at"]
  text = str["text"]
  fav = str["in_reply_to_screen_name"]
  rep = str["in_reply_to_status_id"]

      puts day,text+"\n"


    if rep != str[""] then 
      rep_url = "http://api.twitter.com/1/statuses/show/#{rep}.json"
      rep_json = URI(rep_url).read
      rep_hash = JSON.parse(rep_json)

      puts "↓\nBy:"+fav , rep_hash["text"]

    end

  print ("\n\n\n")
}