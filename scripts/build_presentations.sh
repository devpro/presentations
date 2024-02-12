#!/bin/bash

mkdir dist
cp -r assets dist/assets
npm run build src/index.md -- --base presentations -o ../dist
npm run build src/demo.md -- --base presentations/demo -o ../dist/demo
npm run build src/automated-testing.md -- --base presentations/automated-testing -o ../dist/automated-testing
npm run build src/code-quality.md -- --base presentations/code-quality -o ../dist/code-quality
npm run build src/presentation-as-code.md -- --base presentations/presentation-as-code -o ../dist/presentation-as-code
npm run build src/202402_securite_conteneur.md -- --base presentations/meetup-secu-conteneur-202402 -o ../dist/meetup-secu-conteneur-202402
