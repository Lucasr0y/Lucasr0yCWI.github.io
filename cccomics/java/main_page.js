/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   2/3/2021                               *
*Version:1.0                                                *
*Date Last Modified: 2/3/2021                             *
*Modified by:  Luke Brandt                                        *
*Modification log:      

2/3/2021 added script for slideshow
***
******************************************************************** */
"use strict";
$(document).ready(() => {
  let nextSlide = $("#slides img:first-child");

  // start slide show
  setInterval(() => {
    $("#slide").fadeOut(1000, () => {
      if (nextSlide.next().length == 0) {
        nextSlide = $("#slides img:first-child");
      } else {
        nextSlide = nextSlide.next();
      }
      const nextSlideSource = nextSlide.attr("src");

      $("#slide").attr("src", nextSlideSource).fadeIn(1000);
    }); // end fadeOut()
  }, 8000); // end setInterval()
});

//js for newsletter

document.addEventListener("DOMContentLoaded", () => {
  let $ = (selector) => document.querySelector(selector);
  $("#join_nl").addEventListener("click", () => {
    const email1 = $("#email_1");
    const email2 = $("#email_2");
    const firstName = $("#first_name");

    const emailPattern = /^[\w\.\-]+@[\w\.\-]+\.[a-zA-Z]+$/;

    let isValid = true;

    if (!emailPattern.test(email1.value)) {
      isValid = false;
    email1.nextElementSibling.textContent=("Please enter a valid email.");
    }
     else {
      email1.nextElementSibling.textContent = "";
    }


    if (email2.value == "") {
      email2.nextElementSibling.textContent = "Field entry required.";
      isValid = false;
    } else {
      email2.nextElementSibling.textContent = "";
    }

    if (email1.value != email2.value) {
      email2.nextElementSibling.textContent = "Emails must match.";
      isValid = false;
    }

    if (firstName.value == "") {
      firstName.nextElementSibling.textContent = "Field entry required.";
      isValid = false;
    } else {
      firstName.nextElementSibling.textContent = "";
    }

    if (isValid) {
      alert("Thank you for joining our newsletter " + firstName.value + "!");
    }
  });

  $("#clear_form").addEventListener("click", () => {
    $("#email_1").value = "";
    $("#email_2").value = "";
    $("#first_name").value = "";

    $("#email_1").focus();
  });
});
