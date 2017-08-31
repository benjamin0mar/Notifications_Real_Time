class Event < ApplicationRecord
  after_create_commit { EventBroadcastJob.perform_later self }
  after_destroy_commit { EventBroadcastJob.perform_later self }
  after_update_commit { EventBroadcastJob.perform_later self }

end
