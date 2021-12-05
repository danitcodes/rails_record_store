# ActiveRecord::Base automatically creates all CRUD functionality
class ApplicationRecord < ActiveRecord::Base
  # Tells the database not to ever look for ApplicationRecord as a table
  # Read: https://medium.com/@jeremy_96642/deep-rails-how-to-use-abstract-classes-6aee9b686e75
  self.abstract_class = true
end
