import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Owners from '../../../shared/owners';
import Sex from './sex';
import Status from './status';
import { Form, Row, Col } from 'reactstrap';

class Filter extends Component {

    handleOwnerChange = (e) => {
        const { sex, status } = this.props;
        const owners = e.map(x => x.value);
        this.props.fetchData({ owners, sex, status });
    }

    handleSexChange = (e) => {
        const { owners, status } = this.props;
        const sex = e.map(x => x.value);
        this.props.fetchData({ owners, sex, status });
    }

    handleStatusChange = (e) => {
        const { owners, sex } = this.props;
        const status = e.map(x => x.value);
        this.props.fetchData({ owners, sex, status });
    }

    render() {
        const { owners, sex, status } = this.props;
        return (
            <Form>
                <Row form>
                    <Col md={6}>
                        <Owners
                            label="Owner"
                            value={owners}
                            isMulti={true}
                            handleChange={(e) => this.handleOwnerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={3}>
                        <Sex
                            label="Sex"
                            value={sex}
                            isMulti={true}
                            handleChange={(e) => this.handleSexChange(e)}>
                        </Sex>
                    </Col>
                    <Col md={3}>
                        <Status
                            label="Status"
                            value={status}
                            isMulti={true}
                            handleChange={(e) => this.handleStatusChange(e)}>
                        </Status>
                    </Col>
                </Row>
            </Form>);
    }
}


Filter.propTypes = {
    fetchData: PropTypes.func.isRequired,
    owners: PropTypes.array.isRequired,
    sex: PropTypes.array.isRequired,
    status: PropTypes.array.isRequired,
};


export default Filter;