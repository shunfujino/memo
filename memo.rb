require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.chomp.to_s
p memo_type

case memo_type
when "1" # 新規メモ作成
puts "新規でメモを作成します"
    puts "ファイル名を入力してください。(拡張子は不要)"
    memo_title = gets.chomp.to_s
    CSV.open(memo_title,'w')do|csv|
    csv << []
    end
    
when "2"  # 既存のメモを編集
    puts "既存のメモを編集します"
    puts "編集したいメモのファイル名を入力。（拡張子不要）"
    memo_title = gets.chomp.to_s
    puts "内容を入力"
    memo_content = gets.chomp.to_s 
    CSV.open(memo_title,'w')do|csv|
    csv << [memo_content]
    end
else
    puts "1もしくは2を入力してください"
end