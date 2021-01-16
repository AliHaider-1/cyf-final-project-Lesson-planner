import React from "react";
import Footer from "../Footer/Footer";
import CYF_Brand from "../Images/cyf_brand.png";
import Header from "../Header/Header";
import VolunteerButton from "../VolunteerButton/VolunteerButton";
import RegisterButton from "../RegisterButton/RegisterButton";
import { Link } from "react-router-dom";

const LandingPage = () => {
  return (
    <div className="backgroundImage">
      <div className="navigation">
        <a href="/">
          <img className="logo" src={CYF_Brand} alt="CodeYourFuture logo" />
        </a>
      </div>
      <Link to="/UpcomingLessons">
        <VolunteerButton />
      </Link>
      <div className="landingPageBackground">
        <div className="titleLP">
          <div className="mainTitleLP">
            <strong>Volunteer with CodeYourFuture</strong>
          </div>
        </div>
        <div className="subTitleLP">
          Together, we can help disadvantaged adults find meaningful work.
        </div>
      </div>
      <div className="clear"></div>
      <div className="clear"></div>
      <Footer />
    </div>
  );
};

export default LandingPage;
