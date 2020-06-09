class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
       Post.all
    end 

    def add_post(post)
        Post.all.each do |post|
        post.author = self
        end 
    end 

    def add_post_by_title(post_name)
        writer = Post.new(post_name)
        add_post(writer)
    end 

    def self.post_count
        Post.all.count
    end 
end 