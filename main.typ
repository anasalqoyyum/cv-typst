#import "./src/cv.typ": *

#let content-file = sys.inputs.at("content", default: "content.yml")
#let variant = sys.inputs.at("variant", default: "generic")

#let accelbyte-ai-highlights = (
  "Built and led delivery of core products across web and desktop applications (React & Electron) as well as backend services (Node.js and Golang).",
  "Led the architecture of a code-generated TypeScript Web SDK from OpenAPI into a strongly typed, modular client, eliminating most hand-written wrappers and accelerating adoption for both internal teams and customers.",
  "Led the design and rollout of an AI chat assistant inside an Electron desktop application for game developers, using the Vercel AI SDK for streaming responses and tool-calling to help users inspect builds, logs, and operational data more efficiently.",
  "Designed pragmatic guardrails for in-product AI usage, including bounded token limits and contextual prompting that pulled in-app data into conversations, leading to strong adoption among active users with few production issues observed through analytics and Sentry.",
  "Expanded the assistant with deeper workflow capabilities such as MCP support, BYOK, and FPS-drop analysis from game build logs, turning it into a more capable diagnostic and developer support tool.",
  "Automated customer-specific solution customization through an in-house visual app editor, replacing repetitive engineering work with a faster and more scalable workflow.",
  "Established a standardized load-testing process for the frontend framework (Remix.js + Node.js), achieving a 7x performance improvement while reducing VM load.",
)

#let with-variant-highlights(data, variant) = {
  if variant != "ai" {
    return data
  }

  let work = data.work

  for (work-index, work-entry) in work.enumerate() {
    if work-entry.organization != "AccelByte Inc." {
      continue
    }

    let positions = work-entry.positions

    for (position-index, position-entry) in positions.enumerate() {
      if position-entry.position != "Software Engineer" {
        continue
      }

      position-entry.at("highlights") = accelbyte-ai-highlights
      positions.at(position-index) = position-entry
    }

    work-entry.at("positions") = positions
    work.at(work-index) = work-entry
  }

  data.at("work") = work
  data
}

#let cvdata = with-variant-highlights(yaml(content-file), variant)

#let uservars = (
  headingfont: "Libertinus Serif",
  bodyfont: "Libertinus Serif",
  fontsize: 10pt, // 10pt, 11pt, 12pt
  linespacing: 6pt,
  sectionspacing: 0pt,
  showAddress: true, // true/false show address in contact info
  showNumber: true, // true/false show phone number in contact info
  showTitle: true, // true/false show title in heading
  headingsmallcaps: false, // true/false use small caps for headings
  sendnote: false, // set to false to have sideways endnote
)

#let customrules(doc) = {
  set page(
    paper: "us-letter", // a4, us-letter
    numbering: "1 / 1",
    number-align: center, // left, center, right
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
#cvwork(cvdata)
#cveducation(cvdata)
#cvaffiliations(cvdata)
#cvprojects(cvdata)
#cvawards(cvdata)
#cvcertificates(cvdata)
#cvpublications(cvdata)
#cvskills(cvdata)
#endnote(uservars)
