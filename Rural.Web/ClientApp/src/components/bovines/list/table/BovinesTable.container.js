import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from '../Bovines.store';
import Grid from '../../../_common/grid';
import { bovines } from '../../../../store/selectors';


export default connect(
  bovines,
  dispatch => bindActionCreators(actionCreators, dispatch)
)(Grid);
