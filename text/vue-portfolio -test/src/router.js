
import Vue from "vue";
import VueRouter from "vue-router";
import Lander from "./components/Lander";
import Portfolio from "./components/Portfolio";
import Contact from "./components/contact";

Vue.use(VueRouter);

const routes = [
  { path: "/", component: Lander },
  { path: "/Portfolio", component: Portfolio },
  { path: "/Contact", component: Contact}
];

export default new VueRouter({
  mode: "history",
  routes
});