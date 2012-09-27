require 'csv'


#同じ文字（文字はすべて大→小）の数え上げ

CSV.foreach('allchi_noun_eng_line.csv') { |text|
  result = Hash.new
  text.each { |str|
    #大文字部分をすべて小文字にする
    str = str.downcase

    if result.member?(str) then
       result[str] = result[str]+1
      else 
        result.store(str, 1)
    end 
  }
  

  result.each { |value|
    # value[0] -> 文字
    # Value[1] -> 数字
    puts value[1]

     }
}


#改行文字を省いて出力 
#text = open("allchi_noun_eng.txt").read
#text.each_line{|line|
#print line.chomp!
#} 

