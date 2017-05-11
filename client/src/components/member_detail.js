import React from 'react'
import Reactable from 'reactable'

var Table = Reactable.Table;

const MemberDetail = (props) => {
    const { attendances } = props
    
    let tableRows = null
    
    if(attendances.length > 0) {
        tableRows = attendances.map((attendance) => {            
          return (
            { 
                Date: attendance.meeting.date,
                'In Session': attendance.meeting.in_session,
                Attended: attendance.attended            
            }
          )
      })
    }
    
    return (
        <Table
            className={'table table-bordered table-responsive table-hover'}
            data={tableRows}
            // filterable={['Quantity', 'Measurment', 'Name', 'Category']}
            // filterable={['Category']}
            // noDataText="No matching records found."
            // onClick={props.onClick}
            />
    )
}

module.exports = MemberDetail