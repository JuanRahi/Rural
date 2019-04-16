import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Owners from '../../../shared/owners';
import Sex from './sex';
import Status from './status';
import { Form, Row, Col } from 'reactstrap';

class Filter extends Component {

    handleOwnerChange = (e) => {
        const { sex, status } = this.props;
        const owner = parseInt(e.value, 10);
        this.props.fetchData({ owner, sex, status });
    }

    handleSexChange = (e) => {
        const { owner, status } = this.props;
        const sex = parseInt(e.value, 10);
        this.props.fetchData({ owner, sex, status });
    }

    handleStatusChange = (e) => {
        const { owner, sex } = this.props;
        const status = parseInt(e.value, 10);
        this.props.fetchData({ owner, sex, status });
    }

    render() {
        const { owner, sex, status } = this.props;
        return (
            <Form>
                <Row form>
                    <Col md={6}>
                        <Owners
                            label="Owner"
                            value={owner}
                            handleChange={(e) => this.handleOwnerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={3}>
                        <Sex
                            label="Sex"
                            value={sex}
                            handleChange={(e) => this.handleSexChange(e)}>
                        </Sex>
                    </Col>
                    <Col md={3}>
                        <Status
                            label="Status"
                            value={status}
                            handleChange={(e) => this.handleStatusChange(e)}>
                        </Status>
                    </Col>
                </Row>
            </Form>);
    }
}


Filter.propTypes = {
    fetchData: PropTypes.func.isRequired,
    owner: PropTypes.number.isRequired,
    sex: PropTypes.number.isRequired,
    status: PropTypes.number.isRequired,
};


export default Filter;