/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   03/31/2021                               *
*Version:1.0                                                *
*Date Last Modified: 03/31/2021                           *
*Modified by:  Luke Brandt                                        *
*Modification log:      


***
******************************************************************** */
import { StrictMode } from "react";
import ReactDOM from "react-dom";
import "bootstrap/dist/css/bootstrap.css";


import App from "./App";

const rootElement = document.getElementById("root");
ReactDOM.render(
  <StrictMode>
      <App />
  </StrictMode>,
  rootElement
);
