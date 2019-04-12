import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from '../Bovines.store';
import Filter from './Filter';


export default connect(
    state => state.bovinesList.filters,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Filter);
