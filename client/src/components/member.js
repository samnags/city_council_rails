import React, { Component } from 'react';
import { connect } from 'react-redux'
import MemberSummary from './member_summary'

class Member extends Component { 
    render() {
        const { member } = this.props
        if(!member) {
            return <div>Select a member</div>
        }

        return (
         <MemberSummary member={member}/>   
        )
    }
}

function mapStateToProps(state) {    
    return {
        member: state.activeMember
    }
}

export default connect(mapStateToProps)(Member);