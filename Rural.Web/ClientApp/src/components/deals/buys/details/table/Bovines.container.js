import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Grid from '../../../../_common/grid';
import { actionCreators } from '../Buy.store';


export default connect(
    state => state.buyDetails,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Grid);