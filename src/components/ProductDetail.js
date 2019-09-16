import React,{ Component } from 'react';
import { withRouter } from "react-router-dom";
import { connect } from "react-redux";
import { Grid,Icon,Card, Button,Form,Divider,Segment,Container} from "semantic-ui-react";
import axios from "axios";
import { productDetailURL, addToCartURL } from "../constants";
import { fetchCart } from "../components/actions/cart";

class ProductDetail extends Component {

    state = {
      formVisible: false,
      data: [],
      formData: {}
    };
    componentDidMount() {
      this.handleFetchItem();
    }
  
    handleToggleForm = () => {
      const { formVisible } = this.state;
      this.setState({
        formVisible: !formVisible
      });
    };
  
    handleFetchItem = () => {
      const {
        match: { params }
      } = this.props;
      axios
        .get(productDetailURL(params.productID))
        .then(res => {
          this.setState({ data: res.data});
        })
        
    };
  
    handleAddToCart = slug => {
      axios
        .post(addToCartURL,{ slug})
        .then(res => {
          this.props.refreshCart();
        })
       
    };
  
    handleChange = (e, { name, value }) => {
      const { formData } = this.state;
      const updatedFormData = {
        ...formData,
        [name]: value
      };
      this.setState({ formData: updatedFormData });
    };
  
  render(){
    const { data, formVisible } = this.state;
    const item = data;
  return(
    <Container>
      <Grid columns='equal'>
    <Grid.Row>
  <Grid.Column>
    <Segment>
    <Card
          fluid
          image={item.image}
         
        />
    </Segment>
  </Grid.Column>
  <Grid.Column>
    <Segment>
    <Card
      header={item.title}
          meta={
            <React.Fragment>
              {item.discount_price}
            </React.Fragment>
          }
          description={item.description}
          extra={
            <React.Fragment>
              <Button
                fluid
                color="yellow"
                floated="right"
                icon
                labelPosition="right"
                onClick={this.handleToggleForm}
              >
                Add to cart
                <Icon name="cart plus" />
              </Button>
            </React.Fragment>
          }
          />
      {formVisible && (
          <React.Fragment>
            <Divider />
            <Form onSubmit={() => this.handleAddToCart(item.slug)}>
              <Form.Button primary>Add</Form.Button>
            </Form>
          </React.Fragment>
        )}
    </Segment>
  </Grid.Column>
</Grid.Row>
</Grid>
</Container>
  
)
}
}

const mapDispatchToProps = dispatch => {
  return {
    refreshCart: () => dispatch(fetchCart())
  };
};

export default withRouter(connect(null,mapDispatchToProps)(ProductDetail));
