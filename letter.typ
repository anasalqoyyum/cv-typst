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

I’m excited to apply for the #position position at #company. For the past four years at AccelByte Inc., I’ve focused on building scalable and developer-friendly web apps. I led the architecture of a code-generated TypeScript Web SDK that transformed OpenAPI integration into a strongly typed, modular process that eliminated hand-written wrappers and significantly cut integration time for our teams and customers.

Recently, I've worked on a major revamp for how Release Manager sending email and web notification to customers. I designed and implemented an automated email notification system integrated with our existing internal web app. This improved communication efficiency and reduced customer inquiries about release statuses by 40%. I also introduced and maintained GitLab CI/CD pipelines to automate tasks such as publishing Web SDK releases to npm, running tests, and deploying updates. These pipelines significantly reduced manual effort and improved reliability across our products.

Other than the above, I worked across React, Electron, Node.js, and Golang, contributing to both frontend and backend projects. I introduced semantic versioning and automated release pipelines for our Web SDK, migrated documentation to Docusaurus with PR-preview automation, and standardized load testing for Remix.js + Node.js improving our web apps performance by 7x. These efforts improved developer efficiency, predictability, and product performance across the board.

Thank you for considering my application. I’d be happy to discuss how my background can contribute to #company’s engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
