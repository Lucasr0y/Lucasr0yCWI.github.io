"use strict";
/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   2/17/2021                               *
*Version:1.0                                                *
*Date Last Modified: 2/17/2021                          *
*Modified by:  Luke Brandt                                        *
*Modification log:      



***
******************************************************************** */
$(document).ready(function() {
    $('img.thumbnail').click(function() {
        
        window.location.href = this.id + 'catalogue-pages/cata-page.html';
    });
});