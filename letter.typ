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

I’m applying for the #position position at #company. My strongest fit is at the intersection of TypeScript backend systems, API design, SDKs, release automation, and developer-facing tooling. Over the past five years at AccelByte Inc., I’ve worked on products used by game developers across web, desktop, backend services, and generated TypeScript clients, with a consistent focus on making complex platform capabilities easier to integrate and operate.

One of the largest initiatives I led was the architecture and delivery of a code-generated TypeScript Web SDK that transformed our OpenAPI surface into a strongly typed, modular client. That work reduced hand-written wrappers, improved maintainability, and gave internal teams and customers a more predictable integration path. I also owned semantic versioning and release automation for the SDK, including clearer upgrade flows and migration notes for consumers.

I also helped migrate our release-planning and orchestration process away from an expensive enterprise platform into smaller internal tools, including a frontend Release Manager UI and TUI workflows for release automation. The requirements were ambiguous and evolved quickly, so we focused on the workflows teams actually used, shipped iteratively, and coordinated closely across frontend, backend, and release stakeholders.

Outside of product work, I’ve built developer tooling and terminal-based applications, including open-source TUI and CLI projects in Go and Bun. Those projects strengthened my appreciation for clear command structure, actionable errors, filesystem behavior, and the small cross-platform details that make developer tools feel reliable instead of fragile.

What draws me to #company is the chance to work on a platform where backend APIs, local development, Postgres workflows, and CLI experience are deeply connected. I’d be excited to help build APIs and tooling that feel consistent, secure, and dependable for developers across macOS, Linux, and Windows.

Thank you for considering my application. I’d welcome the opportunity to discuss how my experience can help drive #company’s engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
