(function(){
  var R, Main;
  R = window.React;
  Main = R.createClass({
    render: function(){
      return React.createElement("div", null, "Hello ", this.props.name);
    }
  });
  R.render(React.createElement(Main, {name: "Joe"}), document.body);
}).call(this);
