class Author
  attr_accessor :name, :posts, :title
  @@post_count = 0

  def initialize(name)
    @name = name
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

  def add_post_by_title(title)
    post = Post.new(title)
    @@post_count += 1
    @posts << post
  end

  def self.post_count
    @@post_count += 1
  end

end
