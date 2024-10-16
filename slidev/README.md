# Slidev presentations

Presentations are made from Markdown files located in `src` folder, with [Slidev](https://sli.dev/) ([code](https://github.com/slidevjs/slidev), [docs](https://sli.dev/guide/why.html)).

NPM is used to manage packages and run actions.

Install the dependencies with:

```bash
npm install
```

To start a specific slide show:

- run the website with `npm run dev src/<my-presentation>.md`
- edit `src/<my-presentation>.md` and see the changes applied automatically on [http://localhost:3030](http://localhost:3030)

💡 Look at the presenter options while presenting (switch dark mode switch for example)

To generate the exports:

- generate a PDF file in dark mode with `npm run export-dark src/<my-presentation>.md`

For additional help on the content:

- [Mermaid Diagramming and charting tool](https://mermaid.js.org/)
- [UnoCSS](https://uno.antfu.me/)

To deploy:

- [Hosting > GitHub Pages](https://sli.dev/guide/hosting.html#github-pages)
