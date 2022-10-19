10.times do |n|
  title = "質問#{n + 1} 悩んでいます。"
  content = "fugafugafuga"
  user_name = "User#{n + 1}"
  Question.create!(title: title,
                   content: content,
                   user_name: user_name)
end
