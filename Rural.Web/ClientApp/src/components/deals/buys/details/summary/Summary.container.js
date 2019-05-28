import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Summary from './Summary';
import { actionCreators } from './Summary.store';


export default connect(
    state => state.buySummary,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Summary);