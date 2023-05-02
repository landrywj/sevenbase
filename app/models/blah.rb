# frozen_string_literal: true

# Similar to a comment on a blog post.
class Blah < ApplicationRecord
  belongs_to :user
  belongs_to :blog
end
