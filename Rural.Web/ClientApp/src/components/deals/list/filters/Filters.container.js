import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from '../Deals.store';
import Filter from './Filters';


export default connect(
    state => state.dealsList.filters,
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Filter);
