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
    
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count += 1
  end
end