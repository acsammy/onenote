class UsersNote < ActiveRecord::Base
  belongs_to :user
  belongs_to :note

  validates_uniqueness_of :user, scope: :note
  validates_presence_of :user, :note
end
