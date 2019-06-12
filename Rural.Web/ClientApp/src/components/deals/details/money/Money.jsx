import React, { Component } from 'react';
import PropTypes from 'prop-types';

class Money extends Component {
    render() {
        const { investment, income, balance} = this.props;
        return (
            <div>
                <p>Investment: {investment}</p>
                <p>Income: {income}</p>
                <p>Balance: {balance}</p>
            </div>
        
        );
    }
}

Money.propTypes = {
    investment: PropTypes.number.isRequired,
    income: PropTypes.number.isRequired,
    balance: PropTypes.number.isRequired
}

export default Money;