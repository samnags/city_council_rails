class Attendance < ActiveRecord::Base
    belongs_to :member
    belongs_to :meeting

    scope :did_attend, -> { where(attended: true)}

    def in_session_format        
        self.meeting.in_session == "true" ? "Yes" : "No"       
    end

    def attended_format
        self.attended ? "Yes" : "No"
    end

end

