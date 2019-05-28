import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from '../Bovines.store';
import Grid from '../../../_common/grid';


export default connect(
  state => state.bovinesList,
  dispatch => bindActionCreators(actionCreators, dispatch)
)(Grid);
