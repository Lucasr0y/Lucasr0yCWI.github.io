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

function Footer() {
  return (
    <div className="footer">
      <footer class="bg-dark fixed-bottom">
        <div class="container">
          <p class="m-0 text-center text-white">
            Copyright &copy; Sunset Sushi
          </p>
          <p class="m-0 text-center text-white">
            <a class="text-white" href="tel:12223334444">208-562-1234</a>
          </p>
          <p class="m-0 text-center text-white">
          <a class="text-white" href="mailto:#@gmail.com">sunsetsushi@gmail.com</a>
          </p>
        </div>
      </footer>
    </div>
  );
}

export default Footer;