/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   1/26/2021                                *
*Version:1.0                                                *
*Date Last Modified: 1/26/2021                             *
*Modified by:  Luke Brandt                                        *
*Modification log:      

2/15/2021 added order input validation
***
******************************************************************** */
"use strict";
const $ = (selector) => document.querySelector(selector);



const processEntries = () => {
  
  const num = $("#orderNum").value;
  const name = $("#orderName").value;
if(num === ""){
  alert("Please enter an order number");
}else{
  alert("Order #" + num + " for " + name + " is being shipped!");
}
};

document.addEventListener("DOMContentLoaded", () => {
  $("#lookup").addEventListener("click", processEntries);
});
