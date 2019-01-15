import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Bovines from "./Bovines";
import { actionCreators } from './Bovines.store';


export default connect(
    state => state.bovinesList,
    dispatch => bindActionCreators(actionCreators, dispatch)
  )(Bovines);
  