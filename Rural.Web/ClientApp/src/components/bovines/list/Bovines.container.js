import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from './Bovines.store';
import Bovines from './Bovines';


export default connect(
  state => state.bovinesList,
  dispatch => bindActionCreators(actionCreators, dispatch)
)(Bovines);
