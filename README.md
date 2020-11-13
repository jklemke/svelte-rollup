# svelte-rollup
A basic responsive application built with svelte and rollup.

### npm install commands after cloning
    npm install --save-dev rollup svelte rollup-plugin-svelte

    npm install --save-dev @rollup/plugin-node-resolve

    npm install --save-dev sirv-cli

    npm install --save-dev rollup-plugin-livereload
    
    
### command to build and run

`npm run build` compiles /src/main.js and dependencies and places output in /public/build/bundle.js 

`npm run dev` same as build, but puts rollup in watch mode, and recompiles when a file is changed

`npm run sirv` runs the sirv web server at localhost:5000/index.html, and reloads the browser app when new compiled code appears in /public


