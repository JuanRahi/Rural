import React from 'react';

function Bovine(props) {
    const bovine = props.bovine;
    return(<tr>
            <td>
                { bovine.id }
            </td>
            <td>
                { bovine.number }
            </td>
            <td>
                { bovine.category }
            </td>
            <td>
                { bovine.age }
            </td>
            <td>
                { bovine.ownerName }
            </td>
            <td>
                { bovine.ownerNumber }
            </td>
        </tr>);
};

export default Bovine;