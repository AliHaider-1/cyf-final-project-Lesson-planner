import React from "react";
import Footer from "../Footer/Footer";
import Admin_Page from "../Images/Admin_Page.jpg";
import CreateRoles from "./CreateRoles";
import CYF_Brand from "../Images/cyf_brand.png";


const CreateClassPage = () => {
  return (
    <div>
      <div className="navigation">
        <a href="/AdminPage">
          <img className="logo" src={CYF_Brand} alt="CodeYourFuture logo" />
        </a>
        <Link to="/AdminPage">
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
