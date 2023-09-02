class ApplicationController < ActionController::Base

    def list_posts

        posts = connection.execute("SELECT * FROM posts")

        render 'application/list_posts', locals: {posts: posts}
    end

    def show_post

        post = connection.execute("SELECT * FROM posts WHERE posts.id == ? LIMIT 1", params['id']).first

        render 'application/show_post', locals: { post: post}
    end

    def connection
        db_connection = SQLite3::Database.new 'db/development.sqlite3'
        db_connection.results_as_hash = true

        db_connection
    end
end