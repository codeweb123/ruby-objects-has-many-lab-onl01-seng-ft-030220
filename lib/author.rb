require 'pry'
class Author
  attr_accessor :title, :posts

  @@posts_count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
  end
end

  def add_post(post)
    post.author = self #author instance
  end

  def add_post_by_title(title)
    post = Author.new(title)
    add_post(post)
  end

  def self.post_count
    Author.all.count
  end
end
