import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Grid from '../../../../_common/grid';
import { actionCreators } from '../Buy.store';

const mapStateToProps = ({ buyDetails }) => {
    return {
        data: buyDetails.data.bovines,
        isLoading: buyDetails.isLoading,
        getColumns: buyDetails.getColumns,
    };
};


export default connect(
    state => mapStateToProps(state),
    dispatch => bindActionCreators(actionCreators, dispatch)
)(Grid);