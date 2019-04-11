import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from './Owners.store';
import Dropdown from "../../../../_common/dropdown";

export default connect(
    state => state.owners,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Dropdown);