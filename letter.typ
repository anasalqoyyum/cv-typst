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

I’m applying for the #position position at #company. Over the past five years at AccelByte Inc., I’ve built developer-facing products across React, Electron, Node.js, and Golang, with a strong focus on turning complex systems into tools that are easier to integrate, operate, and understand. One of the largest pieces of work I led was the architecture and delivery of a code-generated TypeScript Web SDK that transformed our OpenAPI surface into a strongly typed, modular client, eliminating most hand-written wrappers and making integration significantly easier for both internal teams and customers.

One technically challenging feature I recently led and shipped was an AI chat assistant inside an existing Electron desktop application used by game developers to inspect builds, logs, and operational data. I built it using the Vercel AI SDK with streaming responses and tool-calling, and a large part of the work was designing the right guardrails: deciding how much token usage to allow, how to discourage abuse without making the feature less useful for legitimate users, and how to keep the assistant genuinely useful instead of generic. We introduced generous but bounded limits, along with custom prompting that let users pull relevant in-app data into the conversation as context. The feature shipped successfully, saw strong adoption among active users, and caused very few issues in production based on our analytics and Sentry monitoring. In practice, it helped developers quickly identify the correct game build and crash logs across large sets of uploaded artifacts, and some even used it to generate Mermaid diagrams from the available context. Since then, we’ve expanded the assistant further with capabilities such as MCP support, BYOK, and FPS-drop analysis from game build logs.

That work reflects the kind of engineering problems I enjoy most: combining product thinking, technical depth, and pragmatic safeguards to make powerful systems feel usable. Beyond product features, I’ve also led migrations from heavyweight release-planning workflows into focused internal tooling to reduce cost and complexity, introduced reliable release automation for our SDKs, and standardized load testing that improved Remix.js + Node.js performance by 7x. Sourcegraph’s focus on code understanding is compelling to me because it sits at that same intersection of context, tooling, and developer productivity.

Thank you for considering my application. I’d welcome the opportunity to discuss how my experience can help drive #company’s engineering goals.

#par(first-line-indent: 0em)[
  Yours faithfully,
]

#name
