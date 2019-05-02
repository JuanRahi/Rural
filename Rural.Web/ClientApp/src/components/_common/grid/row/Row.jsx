import React from 'react';
import { Link } from 'react-router-dom'

const Row = ({ item, columns }) => {
    const rowData = columns.map(column => {
        if (column.url) {
            return (
                <td key={column.prop}>
                    <Link to={column.url.replace(`:${column.prop}`, item[column.prop])}>
                        {item[column.prop]}
                    </Link>
                </td>);
        }
        else
            return <td key={column.prop}>{item[column.prop]}</td>;
    })

    return (<tr>
        {rowData}
    </tr>);
};

export default Row;

