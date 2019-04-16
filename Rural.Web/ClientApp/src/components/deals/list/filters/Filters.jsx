import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { Form, Row, Col, FormGroup, Label, Input } from 'reactstrap';
import Owners from '../../../shared/owners';

class Filter extends Component {

    handleSellerChange = (e) => {
        const { buyer, dateFrom, dateTo } = this.props;
        const seller = parseInt(e.value, 10);
        this.props.fetchData({ seller, buyer, dateFrom, dateTo });
    }

    handleBuyerChange = (e) => {
        const { seller, dateFrom, dateTo } = this.props;
        const buyer = parseInt(e.value, 10);
        this.props.fetchData({ seller, buyer, dateFrom, dateTo });
    }

    handleDateFromChange = (e) => {
        const { seller, buyer, dateTo } = this.props;
        const dateFrom = e.target.value;
        this.props.fetchData({ seller, buyer, dateFrom, dateTo });
    }

    handleDateToChange = (e) => {
        const { seller, buyer, dateFrom } = this.props;
        const dateTo = e.target.value;
        this.props.fetchData({ seller, buyer, dateFrom, dateTo });
    }

    render() {
        const { seller, buyer, dateFrom, dateTo } = this.props;
        return (
            <Form>
                <Row form>
                    <Col md={3}>
                        <Owners
                            label="Seller"
                            value={seller}
                            handleChange={(e) => this.handleSellerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={3}>
                        <Owners
                            label="Buyer"
                            value={buyer}
                            handleChange={(e) => this.handleBuyerChange(e)}>
                        </Owners>
                    </Col>
                    <Col md={3}>
                        <FormGroup>
                            <Label for="dateFrom">From</Label>
                            <Input
                                type="date"
                                name="dateFrom"
                                placeholder="From"
                                value={dateFrom}
                                onChange={(e) => this.handleDateFromChange(e)}>
                            </Input>
                        </FormGroup>
                    </Col>
                    <Col md={3}>
                        <FormGroup>
                            <Label for="dateTo">To</Label>
                            <Input
                                type="date"
                                name="dateTo"
                                placeholder="To"
                                value={dateTo}
                                onChange={(e) => this.handleDateToChange(e)}>
                            </Input>
                        </FormGroup>
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