module Blorgh
  class Article < ApplicationRecord
    attr_accessor :author_name

    belongs_to :author, class_name: Blorgh.author_class.to_s

    has_many :comments

    before_validation :set_author

    # Getter for author_name
    def author_name
      @author_name || author&.name
    end

    private

    def set_author
      # Assigns an author to the article by finding or creating an author record
      # based on the provided author_name.
      #
      # Blorgh.author_class is a configurable class that represents the author model.
      # It is expected to respond to `find_or_create_by` and is typically set up
      # to allow the Blorgh engine to integrate with the host application's user or author model.
      self.author = Blorgh.author_class.find_or_create_by(name: author_name)
    end
  end
end
