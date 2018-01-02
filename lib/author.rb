class Author
  attr_accessor :name, :posts

  def initialize(title)
    @title = title
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post

  end

end
