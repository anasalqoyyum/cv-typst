#import "./src/cv.typ": *

#let content-file = sys.inputs.at("content", default: "content.yml")
#let cvdata = yaml(content-file)

#let uservars = (
  headingfont: "Libertinus Serif",
  bodyfont: "Libertinus Serif",
  fontsize: 10pt, // 10pt, 11pt, 12pt
  linespacing: 5pt,
  sectionspacing: 2pt,
  showAddress: true, // true/false show address in contact info
  showNumber: true, // true/false show phone number in contact info
  showTitle: true, // true/false show title in heading
  headingsmallcaps: false, // true/false use small caps for headings
  sendnote: false, // set to false to have sideways endnote
)

#let customrules(doc) = {
  set page(
    paper: "us-letter", // a4, us-letter
    margin: 1.25cm, // 1.25cm, 1.87cm, 2.5cm
  )

  doc
}

#let cvinit(doc) = {
  doc = setrules(uservars, doc)
  doc = showrules(uservars, doc)
  doc = customrules(doc)

  doc
}

#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)
#cvwork(cvdata, title: "Professional Experience")
#cvprojects(cvdata, title: "Selected Open-Source Projects")
#cvskills(cvdata, title: "Skills & Languages")
#cveducation(cvdata)
#cvpublications(cvdata, title: "Publications")
#cvcertificates(cvdata)
