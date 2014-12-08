(function(){
  var R, Main;
  R = window.React;
  Main = R.createClass({
    render: function(){
      return <div>Hello {this.props.name}</div>;
    }
  });
  R.render(<Main name="Joe" />, document.body);
}).call(this);
