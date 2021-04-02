/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   03/31/2021                               *
*Version:1.0                                                *
*Date Last Modified: 03/31/2021                           *
*Modified by:  Luke Brandt                                        *
*Modification log:      


***
******************************************************************** */
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

import Welcome from "./components/welcome.js";
import Home from "./components/home";
import Menu from "./components/menu";
import Order from "./components/order";
import Contact from "./components/contact";
import Footer from "./components/footer";

export default function App() {
  return (
    <Router>
      <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary p-2">
          <Link class="navbar-brand" to="/welcome">
            Sunset Sushi
          </Link>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup"
            aria-expanded="true"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <Link class="nav-item nav-link active" to="/home">
                Home
              </Link>
              <Link class="nav-item nav-link" to="/menu">
                Menu
              </Link>
              <Link class="nav-item nav-link" to="/order">
                Order
              </Link>
              <Link class="nav-item nav-link" to="/contact">
                Contact
              </Link>
            </div>
          </div>
        </nav>

        <Switch>
          <div>
          <Route path="/welcome">
            <Welcome />
          </Route>
          <Route path="/menu">
            <Menu />
          </Route>
          <Route path="/order">
            <Order />
          </Route>
          <Route path="/home">
            <Home />
          </Route>
          <Route path="/contact">
            <Contact />
          </Route>
          </div>
        </Switch>
        <Footer />
      </div>
      
    </Router>

  );
}


