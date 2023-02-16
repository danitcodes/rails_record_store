class ApplicationRecord < ActiveRecord::Base
  # File provides a place to put code that _all_ models inherit.
  primary_abstract_class
end
