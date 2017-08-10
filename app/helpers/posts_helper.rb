module PostsHelper

  def post_snippet(post)
    post.description ||= truncate(post.body, length: 250, separator: " ")
  end
end
