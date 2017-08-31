class Comment < ApplicationRecord
  after_create_commit { create_event }
  after_destroy_commit { delete_event }
  after_update_commit { update_event }


  private

  def create_event
    Event.create message: "A new comment has been created"
  end

  def delete_event
    Event.create message: "A comment has been destroyed"
  end

  def update_event
    Event.create message: "A comment has been updated"
  end
end
