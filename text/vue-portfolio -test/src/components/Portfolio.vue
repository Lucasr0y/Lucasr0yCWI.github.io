<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   04/21/2021                              #
#Version:1.0                                                #
#Date Last Modified: 05/03/2021                           #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #
 --

 # 5/4/2021 added more website examples, added classes
------------------------------------------------------------------------------------------------------------------>
<template>
  <section class="portfolio mt-5">
    <div class="container">
      <h1>My Works</h1>
      <p>These are a collection of sites I made. Each one is ment to showcase the different web development skills
        I have learned. 
      </p>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Portfolio1"
                class="border border-dark rounded-circle img-custome"
                src="../assets/portfolio1.png"
              />
              <h2>Portfolio 1</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                This first portolio I made. I've inlcluded this in order to show my growth as a web
                developer. This was the first full site I made using HTML and CSS.
              </p>
              <a href="https://luke-brandt.github.io/portfolio/index.html">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
          <br />
        </div>
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Bang For Your Buck Drums"
                class="border border-dark rounded-circle img-custome"
                src="../assets/bfyb.png"
              />
              <h2>Bang For Your Buck Drums</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                This is a full e-commerce site I built using the CSS framework Bootstrap.
              </p>
              <a href="https://luke-brandt.github.io/bfyb-drums/index.html">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
          <br />
        </div>
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Caped Crusader Comics"
                class="border border-dark rounded-circle img-custome"
                src="../assets/caped.png"
              />
              <h2>Caped Crusader Comics</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                This is a full e-commerce site I created that is ment to showcase my skills in JavaScript and jQuery.
                The site uses a jQuery slide show and includes forms that have validation and use JavaScript to function.
                The site is also hosted on AWS. 

              </p>
              <a href="https://lrbcccomics.s3-us-west-2.amazonaws.com/index.html">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
        </div>
      </div>
    </div>
     <div class="container mt-4">
      <div class="row">
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Roy's Records"
                class="border border-dark rounded-circle img-custome"
                src="../assets/roysrecords.png"
              />
              <h2>Roy's Records</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                An e-commerce site I built using Bootstrap 4 for my Communicating Through Web Design Class. 
              </p>
              <a href="https://xb1hs.csb.app/">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
          <br />
        </div>
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Skyline Coffee"
                class="border border-dark rounded-circle img-custome"
                src="../assets/skyline.png"
              />
              <h2>Skyline Coffee</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                This is the first full site I built using Vue. It demonstrates the use of vue-router and an order page
                that uses a full shopping cart where you can add and remove item and display the full total at checkout.
              </p>
              <a href="https://4c3gz.csb.app/About">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
          <br />
        </div>
        <div class="col-md-4">
          <div class="card blueBorder">
            <div class="card-head">
              <img
                alt="Portfolio 2"
                class="border border-dark rounded-circle img-custome"
                src="../assets/portfolio2.png"
              />
              <h2>Porfolio 2</h2>
            </div>
            <hr />
            <div class="card-body">
              <p>
                My second updated portfolio implementing more uses of JavaScript.

              </p>
              <a href="https://vl3ho.csb.app/index.html">
              <button type="button" class="btn btn-outline-secondary">
                View
              </button></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <section class="blueBorder container mt-5">
      <Table />
    </section>
    
  </section>
</template>

<script>
import Table from './classes';

export default{
  name:"Portfolio",
  props: {
    msg: String,
  },
  components: {
    Table
  },
}

</script>


<style scoped>
.portfolio {
  padding-top: 5%;
  padding-bottom: 5%;
  /* padding:15% */
}

.img-custome {
  width: 200px;
  margin-top: 15px;
  margin-bottom: 15px;
  transition: .5s ease-in-out;
}
.blueBorder{
   border:solid rgba(11, 23, 74, 1) 5px;
   border-radius: 25px;
   box-shadow: 12px 12px 5px 1px rgba(0, 0, 255, .2);
}
.bgDarkBlue{
  background-color:rgba(11, 23, 74, 1);
  border-radius: 25px;
}
.card-body p{
  display: none;
}
@media only screen and (min-width: 1440px){
  .img-custome:hover{
   transform: scale(1.5);
   transition: .5s ease-in-out;
}
.card-body p{
  display: inline-block;
}
}
</style>
