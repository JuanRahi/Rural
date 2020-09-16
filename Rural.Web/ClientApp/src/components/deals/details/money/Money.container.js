import { connect } from 'react-redux';
import Money from './Money';
import { money } from '../../../../store/selectors';

const mapStateToProps = (state, ownProps) => {
    const parent = ownProps.selector(state);
    return money(parent.data);
};

export default connect(
    mapStateToProps,
    null
)(Money);
