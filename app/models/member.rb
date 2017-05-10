class Member < ActiveRecord::Base
    has_many :attendances
    has_many :meetings, through: :attendances

    def should_have_attended                      
        Meeting.active.where("date >= '#{self.first_day.to_s}'")
        # Meeting.where("in_session = 'true' AND date >= '#{self.first_day.to_s}'")
    end

    def should_have_attended_count
        should_have_attended.count
    end
    
    def meetings_attended
        self.attendances.did_attend
    end

    def meetings_attended_count
        meetings_attended.count
    end
    

end

# closet through find_by_sql
# Meeting.find_by_sql("SELECT * FROM meetings WHERE meetings.date >= ? AND meetings.in_session = 'true'", self.first_day.to_s)
