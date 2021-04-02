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



function Menu() {
  return (
    <div class="container">
      <div class="container">
        <div class="row align-items-center my-5">
          <div class="col-lg-5">
            <img
              class="img-fluid rounded mb-4 mb-lg-0"
              src="images/sushi1.png"
              alt="roll of sushi"
            />
          </div>
          <div class="col-lg-7">
            <h1 class="font-weight-light">Sushi Roll 1</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row align-items-center my-5">
          <div class="col-lg-5">
            <img
              class="img-fluid rounded mb-4 mb-lg-0"
              src="images/sushi2.png"
              alt="roll of sushi"
            />
          </div>
          <div class="col-lg-7">
            <h1 class="font-weight-light">Sushi Roll 2</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row align-items-center my-5">
          <div class="col-lg-5">
            <img
              class="img-fluid rounded mb-4 mb-lg-0"
              src="images/sushi3.png"
              alt="roll of sushi"
            />
          </div>
          <div class="col-lg-7">
            <h1 class="font-weight-light">Sushi Roll 3</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor </p>
          </div>
        </div>
      </div>
  </div>
  );
}

export default Menu;