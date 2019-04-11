import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from './Sex.store';
import Dropdown from "../../../../_common/dropdown";

export default connect(
    state => state.sex,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Dropdown);