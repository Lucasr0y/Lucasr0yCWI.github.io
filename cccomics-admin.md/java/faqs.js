/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   1/28/2021                                *
*Version:1.0                                                *
*Date Last Modified: 2/5/2021                            *
*Modified by:  Luke Brandt                                        *
*Modification log:      

2/5/2021 added jquery plugin script

***
******************************************************************** */
"use strict";
/*
const toggle = (evt) => {
  const linkElement = evt.currentTarget;
  const h2Element = linkElement.parentNode;
  const divElement = h2Element.nextElementSibling;

  if (h2Element.hasAttribute("class")) {
    h2Element.removeAttribute("class");
  } else {
    h2Element.setAttribute("class", "selected");
  }

  if (divElement.hasAttribute("class")) {
    divElement.removeAttribute("class");
  } else {
    divElement.className = "open";
  }

  evt.preventDefault();
};

document.addEventListener("DOMContentLoaded", () => {
  const linkElements = faqs.querySelectorAll("#faqs a");

  for (let linkElement of linkElements) {
    linkElement.addEventListener("click", toggle);
  }

  linkElements[0].focus();
});*/

$(document).ready( () => 
            $("#accordion").accordion({ 
                event: "click",
                heightStyle: "content",
                collapsible: true, 
                active: false
            })
        )
