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
  <div id="app">
    <Navigation />
    <router-view></router-view>
    <Footer />
  </div>
</template>

<script>
import Navigation from "./components/navigation"
import Footer from "./components/Footer"

export default {
  name: 'App',
  components: {
    Navigation,
    Footer
  }
}
</script>

<style>
*{
  font-family: 'Josefin Sans', sans-serif;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background-color: #34345238;
  
}

</style>
