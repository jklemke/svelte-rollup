import App from "./App.svelte";

const svelteApp = new App({
  target: document.body,
  props: {
    name: "World",
    trait: "Unusual",
  }
})


