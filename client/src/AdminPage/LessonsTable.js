import React from "react"
import moment from 'moment';
import { Link } from "react-router-dom";
import {  useLocation } from "react-router-dom";
import { useState } from 'react';

const LessonsTable = ({el}) =>{
    
 

 
    
   

 const currentDate = moment(el.date).format("DD-MM-YY");
  var deleteId;

   
   

   return(
   
<tr>
  <iframe name="hiddenFrame" className="hide"></iframe>
      <td>{currentDate}</td>
      <td>{el.module}</td>
      <td>{el.week_number}</td>
      <td>{el.starttime+"-"+el.endtime}</td>
      <td><Link to={{ pathname: "/AdminLessonPage", state:{id:el.id,
lesson:el.week_number,
date:currentDate,
time:`${el.starttime}-${el.endtime}`,
module:el.module,
link:el.syllabus_link }  }}><button type="button" className="nav_Home rolesBTN "  >View Details</button></Link></td>
<td><div className="d-none ">{deleteId=el.id}</div><form method="GET" target="hiddenFrame" action={`https://cyf-finalproject-class-planner.herokuapp.com/api/lesson/delete/${deleteId}`}>
 <button type="submit" value="submit" data-toggle="modal" data-target="#signUpModal" className="nav_Home AdminRolesBTN mx-1" >Delete Class</button>
  </form></td> 



<div class="modal" tabindex="-1" role="dialog" id="signUpModal">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Delete Class</h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              You have successfully deleted the class. Thanks
            </div>
            <div class="modal-footer">
              <button
                type="button"
                class="btn btn-secondary"
                data-dismiss="modal"
                onClick={()=>window.location.reload()}
              >
                OK
              </button>
             
            </div>
          </div>
        </div>
      </div>


    </tr>
        

    );
}

 



export default LessonsTable;