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
  <div
    class="foot container-fluid text-center p-3"
    style="margin-bottom: 0"
  >
        <div class="my-3">
          <a href="https://github.com/luke-brandt/luke-brandt.github.io"><img
                alt="Github Logo"
                class="img-fluid pr-2"
                src="../assets/iconmonstr-github-3-64.png"
              /></a>
          <a href="https://www.linkedin.com/in/luke-brandt-139173211/"><img
                alt="Linkedin logo"
                class="img-fluid pl-2"
                src="../assets/iconmonstr-linkedin-3-64.png"
              /></a>
        </div>
        <div>
          <p><a class="text-white" href="mailto:lukebrandt@my.cwi.edu">Lukebrandt@my.cwi.edu</a></p>
        </div>      
  </div>
</template>

<script>
export default {
  name: "Footer",
  props: {
    msg: String,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.foot {
  background-color: rgba(0, 0, 255, .1);
  
}
</style>