import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Deals from './Deals';
import { actionCreators } from './Deals.store';


export default connect(
  state => state.dealsList,
  dispatch => bindActionCreators(actionCreators, dispatch)
)(Deals);