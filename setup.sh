# A Shell script to initialize MakeCode.

read -p "Enter PXT Name: " pxtname
git clone https://github.com/microsoft/"pxt-$pxtname"
cd "pxt-$pxtname"
npm install
npm install pxt
node node_modules/pxt-core/built/pxt.js install
node node_modules/pxt-core/built/pxt.js update
node node_modules/pxt-core/built/pxt.js serve --hostname 0.0.0.0 --port 8080

# Run
# bash setup.sh
