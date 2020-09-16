import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import Filter from './Filters';
import { filters } from '../../../../store/selectors';

const mapStateToProps = (state, ownProps) => {
    const parent = ownProps.selector(state);
    return filters(parent);
};

const mapDispatchToProps = (dispatch, ownProps) => {
    return bindActionCreators(ownProps.actions, dispatch)
}

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Filter);
