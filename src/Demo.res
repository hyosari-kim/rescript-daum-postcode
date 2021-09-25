open DaumPostCode

let oncomplete = (data: PostCode.searchReasult) => {
  switch data.addressType {
  | #R => Js.log("road")
  | #J => Js.log("jibun")
  }
}

let onclose = state => {
  Js.log(state)
  switch state {
  | #FORCE_CLOSE => Js.log("force close")
  | #COMPLETE_CLOSE => Js.log("complete close")
  }
}

let onresize = size => {
  Js.log(size["width"])
  Js.log(size["height"])
}

let onsearch = search => {
  Js.log(search["q"])
}

let postcodeOptions = PostCode.postcodeOptions(~oncomplete, ~onclose, ~onresize, ~onsearch, ())

let test = PostCode.make(postcodeOptions)

test->PostCode.open_()

Js.log("Hello, World!")
