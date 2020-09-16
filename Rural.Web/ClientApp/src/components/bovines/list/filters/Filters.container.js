import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { actionCreators } from '../Bovines.store';
import Filter from './Filters';
import { bovines, filters } from '../../../../store/selectors';


export default connect(
    state => filters(bovines(state)),
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Filter);
