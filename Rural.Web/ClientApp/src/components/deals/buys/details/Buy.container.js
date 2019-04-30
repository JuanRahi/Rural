import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Buy from './Buy';
import { actionCreators } from './Buy.store';


export default connect(
    state => state.buyDetails,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Buy);