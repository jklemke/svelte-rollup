import svelte from "rollup-plugin-svelte";
import resolve from "@rollup/plugin-node-resolve";
import livereload from "rollup-plugin-livereload";

const production = !process.env.ROLLUP_WATCH;

export default {
  input: "src/main.js",
  output: {
    format: "iife",
    file: "public/build/bundle.js"
  },
  plugins: [
    svelte({
      dev: !production,
    }),
    resolve(),
    !production && livereload("public"),
  ],
};