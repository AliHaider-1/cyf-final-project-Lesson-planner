import React from "react"
import moment from 'moment';

const VolunteersTable = ({el,RolesButtonHandler}) =>{
    
const currentDate = moment().format("DD MM YY");
   
  return(

    <tr>
      <td>{el.id}</td>
      <td>{el.module}</td>
      <td>{el.Lesson}</td>
      <td>{el.Date}</td>
      <td>{el.Time}</td>
      <td><button type="button" class="nav_Home rolesBTN"  onClick={()=>RolesButtonHandler(el.id)}>View Details</button></td> 
    </tr>

  );
}

 



export default VolunteersTable;