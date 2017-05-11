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

    def missed
        self.should_have_attended_count - self.meetings_attended_count
    end
    

    def ranking
        #
    end
    

end

# closet through find_by_sql
# Meeting.find_by_sql("SELECT * FROM meetings WHERE meetings.date >= ? AND meetings.in_session = 'true'", self.first_day.to_s)


# Member.find_by(last_name: "Bonin").should_have_attended_count
# Member.find_by(last_name: "Bonin").meetings_attended_count