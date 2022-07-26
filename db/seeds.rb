50.times do |n|
    Post.create!(
      body: "投稿_#{n + 1}"
    )
end
