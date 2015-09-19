class Relationship < ActiveRecord::Base
  belongs_to :coach, class_name: "User"
  belongs_to :coachee, class_name: "User"
  validates :coach_id, presence: true
  validates :coachee_id, presence: true
end
