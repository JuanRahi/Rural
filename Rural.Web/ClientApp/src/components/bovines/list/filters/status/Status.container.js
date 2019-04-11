import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from './Status.store';
import Dropdown from "../../../../_common/dropdown";

export default connect(
    state => state.status,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Dropdown);