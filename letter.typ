#let name = "Muhammad Anas Alqoyyum"
#let email = "muhanasalqoyyum@gmail.com"
#let phone = "+62 813 2772 0079"
#let company = "Company Name"
#let position = "Full Stack Engineer"

#let today = datetime.today()

#set page(margin: 1.2in, paper: "a4")
#set text(font: "Libertinus Serif", size: 11pt, lang: "eng")
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

I’m applying for the #position position at #company. Over the past five years at AccelByte Inc., I’ve built developer-facing products across React, Electron, Node.js, and Golang, with a consistent focus on turning complex systems into tools that are easier to integrate, operate, and understand. Much of my work has centered on owning ambiguous product and platform problems and turning them into practical, reliable solutions for developers.

One of the largest initiatives I led was the architecture and delivery of a code-generated TypeScript Web SDK that transformed our OpenAPI surface into a strongly typed, modular client. That work eliminated most hand-written wrappers, improved maintainability, and made integration significantly easier for both internal teams and customers. More recently, I led the rollout of an AI assistant within an Electron application used by game developers to inspect builds, logs, and operational data. A key part of that work was defining the right guardrails, context, and product boundaries so the assistant would be genuinely useful in production rather than merely a novelty.

That combination of product judgment and technical depth is the kind of work I enjoy most. Beyond product features, I’ve also led internal tooling and workflow improvements, including release automation for our SDKs, a shift away from heavyweight release-planning processes into more focused tooling, and standardized load testing that improved Remix.js + Node.js performance by 7x. What draws me to #company is the opportunity to contribute to products where deep technical context, thoughtful tooling, and developer productivity matter together.

Thank you for considering my application. I’d welcome the opportunity to discuss how my experience can help drive #company’s engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
