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

function Contact() {
  return (
    <div className="home">
      <div class="container">
        <div class="row align-items-center my-5">
          <div class="col-lg-7 bg-dark p-2">
            <img
              class="img-fluid rounded mb-4 mb-lg-0"
              src="images/map.png"
              alt="map of location"
            />
          </div>
          <div class="col-lg-5 bg-primary">
            <h1 class="font-weight-light text-light">Contact US!</h1>
            <div class="bg-white m-3 p-2">
            <h3>Hours</h3>
            <table class="table">
              <tr>
                <td>Mon</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Tue</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Wed</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Thur</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Fri</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Sat</td>
                <td>4:00PM - 11:00PM</td>
              </tr>
              <tr>
                <td>Sun</td>
                <td>Closed</td>
              </tr>
            </table>
            <h3>Location</h3>
            <p>12234 N. Main st. Boise, Idaho 83709</p>
            <h3>Phone</h3>
            <p><a href="tel:12223334444">208-562-1234</a></p>
            <h3>Email</h3>
            <p><a href="mailto:#@gmail.com">sunsetsushi@gmail.com</a></p>
          </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Contact;