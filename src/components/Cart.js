import React from "react";
import {
  Container,
  Header,
  Icon,
  Label,
  Table,
  Button,
 
} from "semantic-ui-react";
import axios from "axios";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import {
  addToCartURL,
  orderSummaryURL,
  orderItemDeleteURL,
  orderItemUpdateQuantityURL
} from "../constants";

class Cart extends React.Component {
  state = {
    data: null,
    error: null,
    loading: false
  };

  componentDidMount() {
    this.handleFetchOrder();
  }

  handleFetchOrder = () => {
    this.setState({ loading: true });
    axios
      .get(orderSummaryURL)
      .then(res => {
        this.setState({ data: res.data, loading: false });
      })
      .catch(err => {
        if (err.response.status === 404) {
          this.setState({
            error: "You currently do not have an order",
            loading: false
          });
        } else {
          this.setState({ error: err, loading: false });
        }
      });
  };

  
  handleAddToCart = (slug) => {
    this.setState({ loading: true });
    axios
      .post(addToCartURL, { slug})
      .then(res => {
        this.handleFetchOrder();
        this.setState({ loading: false });
      })
      .catch(err => {
        this.setState({ error: err, loading: false });
      });
  };

  handleRemoveQuantityFromCart = slug => {
    axios
      .post(orderItemUpdateQuantityURL, { slug })
      .then(res => {
        this.handleFetchOrder();
      })
      .catch(err => {
        this.setState({ error: err });
      });
  };

  handleRemoveItem = itemID => {
    axios
      .delete(orderItemDeleteURL(itemID))
      .then(res => {
        this.handleFetchOrder();
      })
      .catch(err => {
        this.setState({ error: err });
      });
  };

  render() {
    const { data} = this.state;
    return (
      <Container>
        <Header>Order Summary</Header>
        {data && (
          <Table celled>
            <Table.Header>
              <Table.Row>
                <Table.HeaderCell>Item #</Table.HeaderCell>
                <Table.HeaderCell>Item name</Table.HeaderCell>
                <Table.HeaderCell>Item price</Table.HeaderCell>
                <Table.HeaderCell>Item quantity</Table.HeaderCell>
                <Table.HeaderCell>Total item price</Table.HeaderCell>
              </Table.Row>
            </Table.Header>

            <Table.Body>
              {data.order_items.map((orderItem, i) => {
                return (
                  <Table.Row key={orderItem.id}>
                    <Table.Cell>{i + 1}</Table.Cell>
                    <Table.Cell>
                      {orderItem.item.title} -{" "}
                    </Table.Cell>
                    <Table.Cell>${orderItem.item.price}</Table.Cell>
                    <Table.Cell textAlign="center">
                      <Icon
                        name="minus"
                        style={{ float: "left", cursor: "pointer" }}
                        onClick={() =>
                          this.handleRemoveQuantityFromCart(orderItem.item.slug)
                        }
                      />
                      {orderItem.quantity}
                      <Icon
                        name="plus"
                        style={{ float: "right", cursor: "pointer" }}
                        onClick={() =>
                          this.handleAddToCart(
                            orderItem.item.slug
                           )
                        }
                      />
                    </Table.Cell>
                    <Table.Cell>
                      {orderItem.item.discount_price && (
                        <Label color="green" ribbon>
                          ON DISCOUNT
                        </Label>
                      )}
                      ${orderItem.final_price}
                      <Icon
                        name="trash"
                        color="red"
                        style={{ float: "right", cursor: "pointer" }}
                        onClick={() => this.handleRemoveItem(orderItem.id)}
                      />
                    </Table.Cell>
                  </Table.Row>
                );
              })}
              <Table.Row>
                <Table.Cell />
                <Table.Cell />
                <Table.Cell />
                <Table.Cell textAlign="right" colSpan="2">
                  Order Total: ${data.total}
                </Table.Cell>
              </Table.Row>
            </Table.Body>

            <Table.Footer>
              <Table.Row>
                <Table.HeaderCell colSpan="5">
                  <Link to="/checkout">
                    <Button floated="right" color="yellow">
                      Checkout
                    </Button>
                  </Link>
                </Table.HeaderCell>
              </Table.Row>
            </Table.Footer>
          </Table>
        )}
      </Container>
    );
  }
}



export default connect(null)(Cart);
