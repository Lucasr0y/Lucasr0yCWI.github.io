<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   04/21/2021                              #
#Version:1.0                                                #
#Date Last Modified: 05/03/2021                           #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #
 --

# 05/03/2021 - added more mobile styling, added image to header
------------------------------------------------------------------------------------------------------------------>
<template>
<div class="lander container-fluid">
    <div class="container-fluid bannerCard mb-4">
                    <img id="blueKeys"
                      alt="Vue logo"
                      class="img-fluid "
                      src="../assets/bluekeys2.jpg"
                    />
                    <div class="text-light p-3 centered nameCard">
                      <h1>LUKE BRANDT</h1>
                      <h2>SOFTWARE DEVELOPER</h2>
                    </div>
    </div>
  
  <div class="row blueBorder m-3">
    <div class="col-sm-4">
        <div class="container p-3 my-5">
                    <img id="selfPhoto"
                      alt="Vue logo"
                      class="img-fluid rounded-circle "
                      src="../assets/self.jpg"
                    />
                  </div>
    </div>
    <div class="col-sm-8">
      <div class="container p-3">
         <h2 class="bgDarkBlue p-2 text-light">About Me</h2>
                        <p>Hi there!</p>
                        <p>Welcome to my home page. Here is where I take a little time to talk about myself and my work ethic.
                        After graduating from Borah High School in Boise, Idaho in 2013, I went straight into my first job working in the food industry 
                        at a local horse track. From there I have been working at different restaurants, most notably a major pizza chain where I started as a delivery driver in 
                        the fall of 2014, until three years later I became an assistant manager and continued to be on this leadership role. I have enjoyed being an assitant manager full-time
                    but always wondered what the future would hold in this job.</p>

                        <p>In 2020. I decided that I was going to further my career opportunities by returning to college. While still continuing to work as an assistant manager full-time,
                            I began the Software Development program at the College of Western Idaho as a full-time student. There I discovered a love for programming. I enjoyed putting in the hard work and hours it took to complete programs.
                            While some days proved to be stressful, there was no better feeling in seeing
                    a completed program written fully by myself come to life. Each day I expanded my knowledge of programming as well as solidified my time management skills.
                    I plan to complete the degree in two years while still continuing my full-time work position. I still continue to grow in my knowledge 
                    in computer languages and am eager to learn more tools in this ever evolving field.  </p>
                        <p>Thank you for your time!</p>
                        <p>-Luke Brandt</p>
      </div>
    </div>
  </div>
</div>
</template>




<style lang="css" scoped>

    .nameCard h1{
  font-size:50px;
    }
        #selfPhoto{
    width:400px;
    border:solid rgba(11, 23, 74, 1) 5px;
    }
      .lander {
  padding-top: 5%;
    padding-bottom: 5%;
    /* padding:15% */
  }
  .bgDarkBlue{
  background-color:rgba(11, 23, 74, 1);
  border-radius: 25px;
}
.blueBorder{
   border:solid rgba(11, 23, 74, 1) 5px;
   border-radius: 25px;
   box-shadow: 12px 12px 5px 1px rgba(0, 0, 255, .2);
}
p{
  font-size:20px;
}
.nameCard{
  background-color:rgba(11, 23, 74, 1);
  border-radius: 25px;
  box-shadow: 12px 12px 5px 1px rgba(0, 0, 255, .2);
  margin-top:40px;
}

#blueKeys{

  display:none;
}

/*laptop styles*/
@media only screen and (min-width: 1440px){
  .nameCard h1{
font-size:100px;
}

.bannerCard{
  position: relative;
  overflow: hidden;
}
/* Centered text */
.centered {
  position: absolute;
  top: 35%;
  left: 30%;
  transform: translate(-50%, -50%);
}
#blueKeys{
  opacity: 0.65;
  border: 3px solid rgba(11, 23, 74, 1);
  display:inline;
}

}


</style>