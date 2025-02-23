#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Notes on Tauri + Leptos",
  authors: (
    "VectorPikachu",
  ),
  date: datetime.today().display("[month repr:long] [day], [year]"),
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Leptos

Client-side rendering (CSR) with Trunk. In CSR mode, Trunk compiles your Leptos app to WebAssembly (WASM) and runs it in the browser like a typical Javascript single-page app (SPA). 

#link("https://thawui.vercel.app/")[Thaw UI].