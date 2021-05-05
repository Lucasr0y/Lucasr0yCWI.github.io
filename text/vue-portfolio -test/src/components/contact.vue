<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   04/21/2021                              #
#Version:1.0                                                #
#Date Last Modified: 05/03/2021                           #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #
 --
------------------------------------------------------------------------------------------------------------------>

<template>
<div class="contact">
   <div class="container blueBorder p-4">
            <h1>CONTACT ME</h1>
        <form action="mailto:lukeb1995@gmail.com?subject=Personal_Portfolio_Mail" enctype="text/plain" method="POST">
        <div class="form-group">
            <label for="exampleFormControlInput1">Email</label>
            <input class="form-control" type="email" v-model="email" id="email" name="email" placeholder="name@example.com">
        </div>
        
        
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Comments</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <input type="submit" @submit="submit" id="submit" class="btn btn btn-outline-secondary">
        </form>
    </div>
</div>
</template>


<style scoped>
.blueBorder{
   border:solid rgba(11, 23, 74, 1) 5px;
   border-radius: 25px;
   box-shadow: 12px 12px 5px 1px rgba(0, 0, 255, .2);
   
}
.contact {
  padding-top: 50%;
  padding-bottom: 25%;
  margin-bottom: 50%;
  /* padding:15% */
}
@media only screen and (min-width: 1024px){
.contact {
  padding-top: 10%;
  padding-bottom: 15%;
  margin-bottom: 0%;
  /* padding:15% */
}
}

</style>