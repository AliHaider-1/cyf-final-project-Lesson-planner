import React from "react";
import Footer from "../Footer/Footer";
import Header from "../Header/Header";

const RegisterPage = () => {

  return (
      <div>
      <Header/> 
      <div className="container">
  <div className="info">
    <h4>Create a new account</h4>
  </div>
</div>
<div className="form">
  <form className="login-form" method="POST" action="https://cyf-finalproject-class-planner.herokuapp.com/api/register">
   <input type="text" placeholder="first name" name="fname"/>
    <input type="text" placeholder="last name" name="lname"/>
    <input type="text" placeholder="email" name="email"/>
    <input type="password" placeholder="password" name="password"/>

    <button type="submit" value="submit">Register</button>

    <p className="message">Already on CodeYourFuture? <a href="#">Log In</a></p>
  </form>
</div>
      <Footer/>
      </div>
  )
};

export default RegisterPage;