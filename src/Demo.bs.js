// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';


function oncomplete(data) {
  var match = data.addressType;
  if (match === "R") {
    console.log("road");
  } else {
    console.log("jibun");
  }
  
}

function onclose(state) {
  console.log(state);
  if (state === "COMPLETE_CLOSE") {
    console.log("complete close");
  } else {
    console.log("force close");
  }
  
}

function onresize(size) {
  console.log(size.width);
  console.log(size.height);
  
}

function onsearch(search) {
  console.log(search.q);
  
}

var postcodeOptions = {
  oncomplete: oncomplete,
  onresize: onresize,
  onclose: onclose,
  onsearch: onsearch
};

var test = new (daum.Postcode)(postcodeOptions);

test.open(undefined);

console.log("Hello, World!");

exports.oncomplete = oncomplete;
exports.onclose = onclose;
exports.onresize = onresize;
exports.onsearch = onsearch;
exports.postcodeOptions = postcodeOptions;
exports.test = test;
/* test Not a pure module */
