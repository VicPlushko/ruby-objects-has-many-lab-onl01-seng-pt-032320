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
    
  end
    
end