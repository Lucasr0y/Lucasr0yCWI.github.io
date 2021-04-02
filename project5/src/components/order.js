/*********************************************************************
***
*Original Author:  Luke Brandt                                  *
*Date Created:   03/31/2021                               *
*Version:1.0                                                *
*Date Last Modified: 03/31/2021                           *
*Modified by:  Luke Brandt                                        *
*Modification log:      

4/1/2021 -added order contents

***
******************************************************************** */
import React from "react";

function orderClick(e) {
  e.preventDefault();
  alert("Your order has been placed!");
}

class Order extends React.Component {
  constructor(props) {
    super(props);
    this.state = {value: 0};
    this.buttonClicked = this.buttonClicked.bind(this);
  }
  buttonClicked(event) {
    this.setState({value: this.state.value+1});
  }

  render() {
    return (
      <div class="order">
        <div class="container bg-dark mt-3 p-2">
          <table class="table bg-light">
            <thead>
              <tr>
                <th scope="col">Roll Name</th>
                <th scope="col">Price</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Sushi Roll 1</td>
                <td>$2.99</td>
                <td><button onClick={this.buttonClicked}>Order</button></td>
              </tr>
              <tr>
                <td>Sushi Roll 2</td>
                <td>$3.99</td>
                <td><button onClick={this.buttonClicked}>Order</button></td>
              </tr>
              <tr>
                <td>Sushi Roll 3</td>
                <td>$4.99</td>
                <td><button onClick={this.buttonClicked}>Order</button></td>
              </tr>
            </tbody>
          </table>
          <div>
            <h2 class="text-light">Total number of rolls: {this.state.value} </h2>
          </div>
          <div>
            <button onClick={orderClick}>Order</button>
          </div>
          
        </div>
      </div>
    );
  }
};



export default Order