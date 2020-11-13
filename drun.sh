docker run -it -d -p 5000:5000 -v $(pwd)/public:/home/node/app/public -v $(pwd)/src:/home/node/app/src --name svelte-rollup-001 svelte-rollup
