class Movie < ActiveRecord::Base
    def self.create_with_title(the_title)
        movie = self.create(title: the_title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        self.find_by(attribute)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(title:)
        self.title = title
    end

    def self.update_all_titles(title)
        self.update(:all, title: title)
    end

    def self.delete_by_id(id)
        movie = self.find(id)
        movie.destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end
end