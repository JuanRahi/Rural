import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Summary from './Summary';
import { actionCreators } from './Summary.store';
import { summary } from '../../../../store/selectors';


export default connect(
    summary,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Summary);