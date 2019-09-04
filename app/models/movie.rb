class Movie < ApplicationRecord
  validates_format_of :title, with: /[a-zA-Z0-9]/
end
