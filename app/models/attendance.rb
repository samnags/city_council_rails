class Attendance < ActiveRecord::Base
    belongs_to :member
    belongs_to :meeting

    scope :did_attend, -> { where(attended: true)}

end

