import React, { Component } from 'react';
import { connect } from 'react-redux';
import axios from "axios";


import { productListURL } from "../constants";
import {Item} from "semantic-ui-react";
 
class Home extends Component{
    state = {
       data: []
      };

    componentDidMount() {
        axios
          .get(productListURL)
          .then(res => {
            this.setState({ data: res.data});
          })
      }  

  
  
    render(){
        const { data } = this.state;
        let itemList = data.map(item => {
            return(
                  
                <div className="card" key={item.id}>
                        <div className="card-image">
                <Item.Header
                    as="a"
                    onClick={() =>
                      this.props.history.push(`/products/${item.id}`)
                    }
                  >
                   <a href=""><img src={item.image} alt={item.title}/></a>
                  </Item.Header>
                </div>

                <div className="card-content">
                    <Item.Header
                    as="a"
                    onClick={() =>
                      this.props.history.push(`/products/${item.id}`)
                    }
                  >
                    <a href="">{item.title}</a>
                    </Item.Header>
                            <p>{item.description}</p>
                            <p><b>Price: {item.price}$</b></p>
                </div>
                </div>

            )
        })

        return(
            <div className="container">
                <h3 className="center">Our Products</h3>
                <div className="box">
                    {itemList}
                </div>
            </div>
        )
    }
}
const mapStateToProps = (state)=>{
    return {
      items: state.data
    }
  }

export default connect(mapStateToProps)(Home)