import React from "react";
import Footer from "../Footer/Footer";
import Admin_Page from "../Images/Admin_Page.jpg";
import CreateRoles from "./CreateRoles";
import CYF_Brand from "../Images/cyf_brand.png";
import { Link } from "react-router-dom";


const CreateClassPage = () => {
  return (
    <div>
      <div className="navigation">
        <Link to="/AdminPage">
          <img className="logo" src={CYF_Brand} alt="CodeYourFuture logo" />
          <strong className="nav_Home">Home</strong>{" "}
        </Link>
      </div>
      <img className="imgAdmin d-inline" src={Admin_Page}></img>
      <CreateRoles />
      <div className="clear"></div>
      <Footer />
    </div>
  );
};

export default CreateClassPage;
