class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
    @posts 
  end
  
  @@post_count = 0 
    
  def add_post(post)
    @posts << post 
    @@post_count += 1 
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    
end