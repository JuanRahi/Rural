import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Grid from '../../../_common/grid';
import { actionCreators } from '../Deals.store';


export default connect(
    state => state.dealsList,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Grid);