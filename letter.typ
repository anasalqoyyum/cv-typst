#let name = "Muhammad Anas Alqoyyum"
#let email = "hello@anasalqoyyum.dev"
#let phone = "+62 813 2772 0079"
#let company = "Company Name"
#let position = "Product Engineer"
#let company_focus = "[specific product, customer problem, or company direction]"
#let desired_impact = "[specific outcome you want to help achieve]"

#let today = datetime.today()

#set page(margin: 1.2in, paper: "a4")
#set text(font: "Libertinus Serif", size: 11pt, lang: "eng")
#set par(justify: true)
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

I’m applying for the #position position at #company. I’m a Product Engineer focused on developer tools, AI-assisted experiences, and platform products. Since joining AccelByte in 2021, I’ve turned complex platform capabilities into products that game developers can integrate, understand, and operate across web, desktop, APIs, and terminal workflows.

One of the largest initiatives I led was the architecture of a code-generated TypeScript SDK that transformed our OpenAPI definitions into a strongly typed, modular client. Beyond its technical implementation, the work required understanding how internal teams and customers consumed our APIs, removing repetitive integration work, and establishing predictable releases and upgrade paths.

I also led the delivery of an AI assistant inside a desktop application for game developers. We combined streaming responses and tool calling with contextual application data, practical usage guardrails, and production monitoring. We then expanded the product through MCP, BYOK, and build-log diagnostics based on the workflows users needed. That experience strengthened my approach to AI products: start with a concrete user problem, constrain the system deliberately, observe real usage, and expand where it creates measurable value.

What draws me to #company is #company_focus. I’d be excited to bring my experience across product discovery, interface development, platform integration, and developer experience to help #desired_impact.

Thank you for considering my application. I’d welcome the opportunity to discuss how I could contribute to #company’s product and engineering work.

#par(first-line-indent: 0em)[
  Sincerely,
]

#name
