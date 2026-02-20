#let name = "Muhammad Anas Alqoyyum"
#let email = "muhanasalqoyyum@gmail.com"
#let phone = "+62 813 2772 0079"
#let company = "Company Name"
#let position = "Full Stack Engineer"

#let today = datetime.today()

#set page(margin: 1.2in, paper: "a4")
#set text(font: "Libertinus Serif", size: 12pt, lang: "eng")
#set par(justify: true, first-line-indent: 2em)
#set list(marker: "", body-indent: 0em)
#show link: underline

#h(1fr) #box[
  #set align(left)
  - #name
  - #link("mailto:" + email)
  - #link("tel:" + phone)
  - #today.display("[day] [month repr:long] [year]")
]

#v(1em)

- #company

#v(1em)

#par(first-line-indent: 0em)[Dear Hiring Manager,]

I’m excited to apply for the #position position at #company. For the past five years at AccelByte Inc., I’ve built scalable, developer-friendly web applications as a full-stack engineer. I led the end-to-end architecture and delivery of a code-generated TypeScript Web SDK that transformed OpenAPI integration into a strongly typed, modular system, eliminating hand-written wrappers and significantly reducing integration time for both internal teams and customers.

More recently, I designed and implemented an automated email and web notification system for release management, improving customer communication and reducing release-status inquiries by 40%. I also introduced and maintained GitLab CI/CD pipelines to automate SDK publishing, testing, and deployments, significantly reducing manual effort and improving release reliability.

In parallel, I’ve worked across React, Electron, Node.js, and Golang on both frontend and backend systems. I led the integration of AI-powered chat capabilities into our Electron applications, implementing Model Context Protocol (MCP) extensions to enable contextual, tool-aware interactions within the desktop apps. This enhanced user workflows by embedding intelligent assistance directly into the product experience. Additionally, I introduced semantic versioning and automated release pipelines for our Web SDK, migrated documentation to Docusaurus with PR-preview automation, and standardized load testing for Remix.js + Node.js applications—improving server-side performance by 7x while strengthening observability and error monitoring. These initiatives improved developer efficiency, predictability, and overall product quality.

Thank you for considering my application. I’d welcome the opportunity to discuss how my experience can help drive #company’s engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
