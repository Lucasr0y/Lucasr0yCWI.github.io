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
  <div>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light naviBar">
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarTogglerDemo03"
        aria-controls="navbarTogglerDemo03"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#"><router-link class="text-light" to="/"><img
                alt="Github Logo"
                class="img-fluid logoIcon"
                src="../assets/logo.png"
              /></router-link></a
      >
      <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="#">
              <router-link class="text-light" to="/">Home</router-link>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <router-link class="text-light" to="Portfolio">Portfolio</router-link>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <router-link class="text-light" to="Contact">Contact</router-link>
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<style>
.navbar {
  background-color: rgba(11, 23, 74, 1);
}
.logoIcon{
  width:30px;
}
</style>