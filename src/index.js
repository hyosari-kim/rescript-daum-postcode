import Demo from './Demo.bs.js'

function component() {
  const element = document.createElement('div');
  element.setAttribute("id", "hello")

  // Lodash, currently included via a script, is required for this line to work
  element.innerHTML = _.join(['Hello', 'webpack'], ' ');

  console.log("hello")

  return element;
}

document.body.appendChild(component());