class Author
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all
  end
  
  def add_post(post)
    post.author = self
    @@post_count += 1
  end
    
end