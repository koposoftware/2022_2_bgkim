import React from "react";
import Header from "./header";
import Footer from "./footer";

const Layout = ({ children }) => {
  return (
    <div className="font-hanafont">
      <Header />
      <div>{children}</div>
      <Footer />
    </div>
  );
};

export default Layout;
