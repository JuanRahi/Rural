import React from 'react';

const Row = ({ item, columns }) => {
    const rowData = columns.map(column => <td key={column.prop}>{item[column.prop]}</td>);
    return(<tr>
            {rowData}
        </tr>);
};

export default Row;