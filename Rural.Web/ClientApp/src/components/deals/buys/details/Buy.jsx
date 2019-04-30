import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Grid from '../../../_common/grid';

class Buy extends Component {
    render() {
        const params = this.props.match.params;
        return (
            <div>
                <Grid {...this.props} params={params} />
            </div>
        );
    }
}

Buy.propTypes = {
    fetchData: PropTypes.func.isRequired,
    getColumns: PropTypes.func.isRequired,
    data: PropTypes.array.isRequired,
    isLoading: PropTypes.bool.isRequired
};

export default Buy;