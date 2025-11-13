#let name = "Muhammad Anas Alqoyyum"
#let email = "muhanasalqoyyum@gmail.com"
#let phone = "+62 813 2772 0079"
#let company = "Company Name"
#let position = "Senior Frontend Engineer"

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

I’m excited to apply for the #position position at #company. For the past four years at AccelByte Inc., I’ve focused on building scalable and developer-friendly web systems. I led the architecture of a code-generated TypeScript Web SDK, transforming API integration into a strongly typed, modular process that eliminated hand-written wrappers and significantly cut integration time for our teams and customers.

Other than TypeScript Web SDK, I worked across React, Electron, Node.js, and Golang, contributing to both frontend and backend projects. I introduced semantic versioning and automated release pipelines for our Web SDK, migrated documentation to Docusaurus with PR-preview automation, and standardized load testing for Remix.js + Node.js, boosting performance by 7x. These efforts improved developer efficiency, predictability, and product performance across the board.

I’m drawn to #company's focus on enhancing overall user experience and performance in web space and would love to bring my experience in frontend architecture, performance optimization, and automation to help your team scale effectively. Thank you for considering my application. I'd be glad to discuss how my background can add value to your engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
