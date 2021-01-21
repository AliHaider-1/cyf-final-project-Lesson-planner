import React from "react";


const AdminVolunteersTable = () => {
  

 
  return (
    <div>
      <h2 className="text-center">Signed Up Volunteers</h2>

      <table>
        <thead>
          <tr>
            <th>Role</th>
            <th>Full name</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody className="firstRow">
          {signedUpVolunteers.map((el) => (
            <tr>
              <td>{el.Role}</td>
              <td>{el.FullName}</td>
              <td>{el.Email}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default AdminVolunteersTable;
