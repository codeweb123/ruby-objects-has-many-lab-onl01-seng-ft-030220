require 'pry'
class Author
  attr_accessor :name, :posts

  @@posts_count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      author.post == self
  end
end

  def add_post(post)
    post.author = self #author instance
  end

  def add_post_by_name(title)
    post = Author.new(title)
    add_post(post)
  end

  def self.post_count
    Author.all.count
  end

end
