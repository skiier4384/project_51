require 'random_data'

# Create Posts
50.times do |i|
  Post.create!(
    title: "#{i}_" + RandomData.random_sentence,
    body:  "#{i}_" + RandomData.random_paragraph
  )
end
posts = Post.all
puts "#{Post.count} posts created"