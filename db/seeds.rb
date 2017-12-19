3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Proin nec nunc velit. Donec et malesuada arcu. Praesent venenatis dolor sit amet orci fringilla pulvinar. Vivamus a diam sed leo vulputate sollicitudin in quis quam. Aenean purus tellus, hendrerit id consequat ut, dignissim sit amet ex. Aliquam sagittis bibendum nulla, ac mollis felis blandit ac. Proin luctus vitae sapien nec condimentum. Integer ut dui mattis, volutpat justo id, lobortis sem. Nulla enim lorem, mattis in laoreet vitae, imperdiet non ligula.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Proin nec nunc velit. Donec et malesuada arcu. Praesent venenatis dolor sit amet orci fringilla pulvinar. Vivamus a diam sed leo vulputate sollicitudin in quis quam. Aenean purus tellus, hendrerit id consequat ut, dignissim sit amet ex. Aliquam sagittis bibendum nulla, ac mollis felis blandit ac. Proin luctus vitae sapien nec condimentum. Integer ut dui mattis, volutpat justo id, lobortis sem. Nulla enim lorem, mattis in laoreet vitae, imperdiet non ligula.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"

User.create(email: "test@test.com",
            password: "test123",
            password_confirmation: "test123",
            name: "Fake User",
            roles: "site_admin"
            )
