(window.webpackJsonp=window.webpackJsonp||[]).push([[0],{211:function(e,t){},234:function(e,t,a){e.exports=a(451)},449:function(e,t,a){},451:function(e,t,a){"use strict";a.r(t);for(var n=a(0),r=a.n(n),c=a(7),o=a.n(c),l=a(59),i=a(60),s=a(62),u=a(61),m=a(63),p=a(461),d=a(463),f=a(462),h=a(457),E=function(){return r.a.createElement("nav",{className:"nav-wrapper"},r.a.createElement("div",{className:"container"},r.a.createElement(h.a,{to:"/",className:"brand-logo"},"Shopping"),r.a.createElement("ul",{className:"right"},r.a.createElement("li",null,r.a.createElement(h.a,{to:"/"},"Shop")),r.a.createElement("li",null,r.a.createElement(h.a,{to:"/cart"},"My cart")),r.a.createElement("li",null,r.a.createElement(h.a,{to:"/cart"},r.a.createElement("i",{className:"material-icons"},"shopping_cart"))))))},g=a(101),y=a(95),b=a.n(y),v="".concat("http://127.0.0.1:8000").concat("/api"),O="".concat(v,"/products/"),C="".concat(v,"/add-to-cart/"),j="".concat(v,"/order-summary/"),S=("".concat(v,"/user-id/"),"".concat(v,"/order-item/update-quantity/"),b.a.create({baseURL:v,headers:{Authorization:"Token ".concat(localStorage.getItem("token"))}})),k=a(459),A=function(e){function t(){var e,a;Object(l.a)(this,t);for(var n=arguments.length,r=new Array(n),c=0;c<n;c++)r[c]=arguments[c];return(a=Object(s.a)(this,(e=Object(u.a)(t)).call.apply(e,[this].concat(r)))).state={data:[]},a.handleAddToCart=function(e){a.setState({loading:!0});var t=a.state.formData,n=a.handleFormatData(t);S.post(C,{slug:e,variations:n}).then(function(e){a.props.refreshCart(),a.setState({loading:!1})}).catch(function(e){a.setState({error:e,loading:!1})})},a}return Object(m.a)(t,e),Object(i.a)(t,[{key:"componentDidMount",value:function(){var e=this;b.a.get(O).then(function(t){e.setState({data:t.data})})}},{key:"render",value:function(){var e=this,t=this.state.data.map(function(t){return r.a.createElement("div",{className:"card",key:t.id},r.a.createElement("div",{className:"card-image"},r.a.createElement(k.a.Header,{as:"a",onClick:function(){return e.props.history.push("/products/".concat(t.id))}},r.a.createElement("a",{href:""},r.a.createElement("img",{src:t.image,alt:t.title}))),r.a.createElement("span",{to:"/",className:"btn-floating halfway-fab waves-effect waves-light red",onClick:function(){e.handleAddToCart(t.id)}},r.a.createElement("i",{className:"material-icons"},"add"))),r.a.createElement("div",{className:"card-content"},r.a.createElement(k.a.Header,{as:"a",onClick:function(){return e.props.history.push("/products/".concat(t.id))}},r.a.createElement("a",{href:""},t.title)),r.a.createElement("p",null,t.description),r.a.createElement("p",null,r.a.createElement("b",null,"Price: ",t.price,"$"))))});return r.a.createElement("div",{className:"container"},r.a.createElement("h3",{className:"center"},"Our items"),r.a.createElement("div",{className:"box"},t))}}]),t}(n.Component),w=Object(g.b)(function(e){return{items:e.data}},function(e){return{refreshCart:function(){return e(function(e){e({type:"CART_START"}),S.get(j).then(function(t){e({type:"CART_SUCCESS",data:t.data})}).catch(function(t){e({type:"CART_FAIL",error:t})})})}}})(A),T=a(211),N=a.n(T),_=a(136),x=a(460),D=a(458),R=(a(376),[]),I=0;I<23;I++)R.push({href:"http://ant.design",title:"ant design part ".concat(I),avatar:"https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png",description:"Ant Design, a design language for background applications, is refined by Ant UED Team.",content:"We supply a series of design principles, practical patterns and high quality design resources (Sketch and Axure), to help people create their product prototypes beautifully and efficiently."});var L=function(e){var t=e.type,a=e.text;return r.a.createElement("span",null,r.a.createElement(_.a,{type:t,style:{marginRight:8}}),a)},z=function(e){function t(){return Object(l.a)(this,t),Object(s.a)(this,Object(u.a)(t).apply(this,arguments))}return Object(m.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return r.a.createElement(x.a,{itemLayout:"vertical",size:"large",pagination:{onChange:function(e){console.log(e)},pageSize:3},dataSource:R,footer:r.a.createElement("div",null,r.a.createElement("b",null,"ant design")," footer part"),renderItem:function(e){return r.a.createElement(x.a.Item,{key:e.title,actions:[r.a.createElement(L,{type:"star-o",text:"156",key:"list-vertical-star-o"}),r.a.createElement(L,{type:"like-o",text:"156",key:"list-vertical-like-o"}),r.a.createElement(L,{type:"message",text:"2",key:"list-vertical-message"})],extra:r.a.createElement("img",{width:272,alt:"logo",src:"https://gw.alipayobjects.com/zos/rmsportal/mqaQswcyDLcXyDKnZfES.png"})},r.a.createElement(x.a.Item.Meta,{avatar:r.a.createElement(D.a,{src:e.avatar}),title:r.a.createElement("a",{href:e.href},e.title),description:e.description}),e.content)}})}}]),t}(n.Component),U=function(e){function t(){return Object(l.a)(this,t),Object(s.a)(this,Object(u.a)(t).apply(this,arguments))}return Object(m.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return r.a.createElement(p.a,null,r.a.createElement("div",{className:"App"},r.a.createElement(E,null),r.a.createElement(d.a,null,r.a.createElement(f.a,{exact:!0,path:"/",component:w}),r.a.createElement(f.a,{path:"/products/:productID",component:z}),r.a.createElement(f.a,{path:"/cart",component:N.a}))))}}]),t}(n.Component),X=(a(449),a(50)),q=a(221),M=a(222),F=function(e,t){return Object(M.a)({},e,t)},H={shoppingCart:null,error:null,loading:!1},J=function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:H,t=arguments.length>1?arguments[1]:void 0;switch(t.type){case"CART_START":return function(e,t){return F(e,{error:null,loading:!0})}(e);case"CART_SUCCESS":return function(e,t){return F(e,{shoppingCart:t.data,error:null,loading:!1})}(e,t);case"CART_FAIL":return function(e,t){return F(e,{error:t.error,loading:!1})}(e,t);default:return e}},P=window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__||X.d,V=Object(X.c)({cart:J}),B=Object(X.e)(V,P(Object(X.a)(q.a))),K=r.a.createElement(g.a,{store:B},r.a.createElement(U,null));o.a.render(K,document.getElementById("root"))}},[[234,2,1]]]);
//# sourceMappingURL=main.98f79989.chunk.js.map