echo "Running dexie-syncable tests"
pnpm run test:syncable#!/bin/bash -e
cd ../../Dexie.Observable
echo "Installing dependencies for dexie-observable"
pnpm install --reporter silent
echo "Building dexie-observable"
pnpm run build
cd -
echo "Installing dependencies for dexie-syncable"
pnpm install >/dev/null
echo "Building dexie-syncable"
pnpm run build

pnpm run test:typings
pnpm run test:unit
pnpm run test:integration
