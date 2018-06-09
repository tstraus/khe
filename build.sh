#!/bin/bash

echo "----- building server -----"
shards install
crystal build --release ./src/khe.cr
echo "----- done server -----"

echo "----- building website -----"
npm install
npm run build
echo "----- done website -----"