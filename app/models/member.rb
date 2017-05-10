class Member < ActiveRecord::Base
    has_many :attendances
    has_many :meetings, through: :attendances

    def should_have_attended      
        binding.pry   
        Meeting.where("in_session = 'true' AND date >= '#{self.first_day.to_s}'").count        
    end
    

end

# closet through find_by_sql
# Meeting.find_by_sql("SELECT * FROM meetings WHERE meetings.date >= ? AND meetings.in_session = 'true'", self.first_day.to_s)
