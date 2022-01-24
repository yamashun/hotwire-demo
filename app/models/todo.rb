class Todo < ApplicationRecord
  after_create_commit { broadcast_append_to('todos') }
end
