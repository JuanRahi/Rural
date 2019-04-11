import React, { Component } from 'react';
import Owners from './owners';
import Sex from './sex';
import Status from './status';
import { Form, Row, Col } from 'reactstrap';

class Filter extends Component {

    handleChange = (value) => {
        this.setState({ value });
    }

    render() {
        return (
            <Form>
                <Row form>
                    <Col md={6}>
                        <Owners
                            label="Owner"
                            handleChange={this.handleChange}>
                        </Owners>
                    </Col>
                    <Col md={3}>
                        <Sex
                            label="Sex"
                            handleChange={this.handleChange}>
                        </Sex>
                    </Col>
                    <Col md={3}>
                        <Status
                            label="Status"
                            handleChange={this.handleChange}>
                        </Status>
                    </Col>
                </Row>
            </Form>);
    }
}

export default Filter;