class Author 
  attr_accessor :name
  @@total_posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post_name)
    @posts << post_name
    post_name.author = self
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
  end
  
  def post_count
  end
  
end