import React from 'react'
import Reactable from 'reactable'

var Table = Reactable.Table;

const MemberDetail = (props) => {
    const { attendances } = props
    
    let tableRows = null
    
    if(attendances.length > 0) {
        tableRows = attendances.map((attendance) => {            
        let date = new Date(attendance.meeting.date).toDateString()
          return (
            { 
                Date: date,
                'In Session?': attendance.meeting.in_session,
                'Attended?': attendance.attended            
            }
          )
      })
    }
    
    return (
        <div>
            <h3>By Meeting Date</h3>
            <Table
                className={'table table-bordered table-responsive table-hover'}
                data={tableRows}            
                />
        </div>
        
    )
}

module.exports = MemberDetail