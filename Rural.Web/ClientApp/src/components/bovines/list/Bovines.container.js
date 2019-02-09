import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Grid from "../../_common/grid";
import { actionCreators } from './Bovines.store';


export default connect(
    state => state.bovinesList,
    dispatch => bindActionCreators(actionCreators, dispatch)
  )(Grid);
  