import { connect } from 'react-redux';
import Money from './Money';

const mapStateToProps = (state, ownProps) => {
    const parent = ownProps.selector(state);
    return {
        investment: parent.data.investment,
        income: parent.data.income,
        balance: parent.data.balance,
    };
};

export default connect(
    mapStateToProps,
    null
)(Money);
