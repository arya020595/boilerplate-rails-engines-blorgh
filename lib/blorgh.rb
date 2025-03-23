require 'blorgh/version'
require 'blorgh/engine'

# Blorgh is a module that provides functionality for managing an author class.
# It uses a class-level accessor `author_class` to store the name of the author class as a string.
# The `self.author_class` method retrieves the stored class name and converts it into a constant.
#
# Example usage:
#   Blorgh.author_class = "User"
#   Blorgh.author_class # => User (constantized class)
#
# Note: Ensure that the value assigned to `author_class` is a valid class name
# that can be constantized.
module Blorgh
  mattr_accessor :author_class

  def self.author_class
    @@author_class.constantize
  end
end
