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
import React from "react";


function Welcome() {
  return (
    <div className="home">
      <div class="container">
        <div class="row align-items-center my-5">
          <div class="col-lg-8">
            <img
              class="img-fluid rounded mb-4 mb-lg-0"
              src="images/sushi-rows.png"
              alt="rolls of sushi"
            />
          </div>
          <div class="col-lg-4 bg-primary p-3 text-light">
            <h1 class="font-weight-light">SUNSET SUSHI</h1>
            <p>WELCOME! Feel free to browse our menu and order online.</p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Welcome;
