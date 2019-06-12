import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Grid from '../../../_common/grid';

const mapStateToProps = (state, ownProps) => {
    const parent = ownProps.selector(state);
    return {
        data: parent.data.bovines,
        isLoading: parent.isLoading,
        getColumns: parent.getColumns,
    };
};

const mapDispatchToProps = (dispatch, ownProps) => {
    return bindActionCreators(ownProps.actions, dispatch)
}

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Grid);