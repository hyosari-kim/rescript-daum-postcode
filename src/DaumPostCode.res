module PostCode = {
  type t

  type postcodeOptions
  type themeOptions

  //R/J Y/N 과 같은 결과를 타입을 따로 지정할 수 있는지?

  type addressType = [#R | #J]
  type userLanguageType = [#K | #E]
  type stringYesOrNo = [#Y | #N]
  type searchReasult = {
    zonecode: string,
    address: string,
    addressEnglish: string,
    addressType: addressType,
    userSelectedType: addressType,
    noSelected: stringYesOrNo,
    userLanguageType: userLanguageType,
    roadAddress: string,
    roadAddressEnglish: string,
    jibunAddress: string,
    jibunAddressEnglish: string,
    autoRoadAddress: string,
    autoRoadAddressEnglish: string,
    autoJibunAddress: string,
    autoJibunAddressEnglish: string,
    buildingCode: string,
    buildingName: string,
    apartment: stringYesOrNo,
    sido: string,
    sidoEnglish: string,
    sigungu: string,
    sigunguEnglish: string,
    sigunguCode: string,
    roadnameCode: string,
    bcode: string,
    roadname: string,
    roadnameEnglish: string,
    bname: string,
    bnameEnglish: string,
    bname1: string,
    bname1English: string,
    bname2: string,
    bname2English: string,
    query: string,
  }

  @obj
  external postcodeOptions: (
    ~oncomplete: searchReasult => unit=?,
    ~onresize: {"width": int, "height": int} => unit=?,
    ~onclose: [#FORCE_CLOSE | #COMPLETE_CLOSE] => unit=?,
    ~onsearch: {"q": string, "count": int} => unit=?,
    ~width: int=?,
    ~height: int=?,
    ~animation: bool=?,
    ~focusInput: bool=?,
    ~autoMapping: bool=?,
    ~shorthand: bool=?,
    ~pleaseReadGuide: int=?,
    ~pleaseReadGuideTimer: float=?,
    ~maxSuggestItems: int=?,
    ~showMoreHName: bool=?,
    ~hideMapBtn: bool=?,
    ~hideEngBtn: bool=?,
    ~alwaysShowEngAddr: bool=?,
    ~submitMode: bool=?,
    ~useBannerLink: bool=?,
    ~theme: themeOptions=?,
    unit,
  ) => postcodeOptions = ""

  @obj
  external themeOptions: (
    ~bgColor: string=?,
    ~searchBgColor: string=?,
    ~contentBgColor: string=?,
    ~pageBgColor: string=?,
    ~textColor: string=?,
    ~queryTextColor: string=?,
    ~postcodeTextColor: string=?,
    ~emphTextColor: string=?,
    ~outlineColor: string=?,
  ) => themeOptions = ""

  @scope("daum") @new external make: postcodeOptions => t = "Postcode"

  type openOptions
  external openOptions: (
    ~q: string=?,
    ~left: int=?,
    ~top: int=?,
    ~popupTitle: string=?,
    ~popupKey: string=?,
    ~autoClose: bool=?,
    unit,
  ) => openOptions = ""
  @send external open_: (t, ~options: openOptions=?, unit) => unit = "open"

  type domElement
  type embedOptions
  external embedOptions: (~q: string=?, ~autoClose: bool=?) => embedOptions = ""
  @send external embed: (t, domElement, ~options: embedOptions=?, unit) => unit = "embed"
}
