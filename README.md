react-livescript-jsx
====================

(LS -> JSX -> JS) little demo
---------------------------

Use JSX syntax in your ls files right now =)

Usage example:

LiveScript Source

```ls
R = window.React

Main = R.create-class do
  render: ->
    ``<div>Hello {this.props.name}</div>``
R.render do 
  ``<Main name="Joe" />``
  document.body
```

is translated to JSX

```jsx
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
```

and then compiled to JS

```js
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
```
