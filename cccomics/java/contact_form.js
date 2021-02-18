/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   1/28/2021                                *
*Version:1.0                                                *
*Date Last Modified: 2/15/2021                            *
*Modified by:  Luke Brandt                                        *
*Modification log:      

*2/3/2021- removed email focus on page load
2/15/2021- added data validation to contact form
***
******************************************************************** */
"use strict";

const $ = (selector) => document.querySelector(selector);

/*Copied from the 6-2 assignment because I could not get them to display
as a list*/
const displayErrorMsgs = (msgs) => {
  // create a new ul element
  const ul = document.createElement("ul");
  ul.classList.add("messages");

  // create a new li element for each error message, add to ul
  for (let msg of msgs) {
    const li = document.createElement("li");
    const text = document.createTextNode(msg);
    li.appendChild(text);
    ul.appendChild(li);
  }

  // if ul node isn't in document yet, add it
  const node = $("ul");
  if (node == null) {
    // get the form element
    const form = $("form");

    // add ul to parent of form, before the form
    form.parentNode.insertBefore(ul, form);
  } else {
    // replace existing ul node
    node.parentNode.replaceChild(ul, node);
  }
};

const processEntries = () => {
  const name = $("#contact_name");
  const email = $("#contact_email");
  const phone = $("#contact_phone");
  const reason = $("#contact_reason");

  const phonePattern = /^\d{3}-\d{3}-\d{4}$/;
  const emailPattern = /^[\w\.\-]+@[\w\.\-]+\.[a-zA-Z]+$/;
  
  

  const msgs = [];

  if (name.value == "") {
    msgs[msgs.length] = "Please enter your name";
  }
  if (!emailPattern.test(email.value) ) {
    msgs[msgs.length] = "Please enter a valid email address.";
  }
  if (!phonePattern.test(phone.value)) {
    msgs[msgs.length] = "Please enter a phone number in NNN-NNN-NNNN format.";
  }

  if (reason.value == "") {
    msgs[msgs.length] = "Please select a reason for contacting us.";
  }

  if (msgs.length == 0) {
    alert(
      name.value +
        "\n" +
        email.value +
        "\n" +
        phone.value +
        "\n" +
        "\nThank you for contacting us," +
        " you should be hearing" +
        " from us shortly about " +
        reason.value +
        "\n" +
        "Comments: " +
        $("#comments").value
    );
  } else {
    displayErrorMsgs(msgs);
  }
};

const resetForm = () => {
  $("form").reset();
  $("ul").remove();
  $("#contact_email").focus();
};

document.addEventListener("DOMContentLoaded", () => {
  $("#submit").addEventListener("click", processEntries);
  $("#reset_form").addEventListener("click", resetForm);
});
