react-livescript-lsx
====================

LS -> JSX -> JS
---------------

Use JSX syntax in your ls files right now =)

Usage example:

``ls
R = window.React

Main = R.create-class do
  render: ->
    ``<div>Hello {this.props.name}</div>``
R.render do 
  ``<Main name="Joe" />``
  document.body
``

