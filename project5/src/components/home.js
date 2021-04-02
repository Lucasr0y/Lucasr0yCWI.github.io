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

function Home() {
  return (
    <div className="home">
    <div class="container py-3">
            <img
              class="img-flui"
              src="images/ocean.png"
              alt="orange sunset across an ocean"
            />
      <div class="row align-items-center my-5">
        <div class="container mb-2 bg-primary p-4 text-light">
          <h1 class="font-weight-light">Welcome</h1>
          <p>Filler content about the restraunt, location, how to order, where to contact, how to navigate the website.
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
          incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
          non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
      </div>
    </div>
  </div>
  );
}

export default Home;
