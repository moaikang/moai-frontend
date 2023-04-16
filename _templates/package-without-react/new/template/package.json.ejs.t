---
to: packages/<%= name %>/package.json
---
{
  "name": "@moai/<%= name %>",
  "description": "<%= description %>",
  "main": "./src/index.ts",
  "module": "./src/index.ts",
  "sideEffects": false,
  "version": "0.0.1",
  "exports": {
    ".": "./src/index.ts",
    "./package.json": "./package.json"
  },
  "publishConfig": {
    "main": "./dist/index.js",
    "types": "./dist/index.d.ts",
    "module": "./esm/index.mjs",
    "import": "./esm/index.mjs",
    "exports": {
      ".": {
        "import": "./esm/index.mjs",
        "require": "./dist/index.js",
        "types": "./dist/index.d.ts"
      },
      "./package.json": "./package.json"
    }
  },
  "scripts": {
    "prepack": "yarn build",
    "build": "yarn clean && rollup -c && tsc --declaration --emitDeclarationOnly --declarationDir dist",
    "test": "jest --passWithNoTests",
    "clean": "rimraf ./dist ./esm",
    "lint": "eslint -c .eslintrc.js '{pages,src}/**/*.{js,jsx,ts,tsx}'",
    "lint:fix": "yarn lint --fix",
    "typecheck": "tsc -p tsconfig.typecheck.json --noEmit"
  },
  "dependencies": {
    "@babel/runtime": "^7.21.0"
  },
  "devDependencies": {
    "@babel/core": "^7.18.6",
    "@babel/plugin-proposal-class-properties": "^7.17.12",
    "@babel/plugin-proposal-decorators": "^7.18.2",
    "@babel/plugin-proposal-nullish-coalescing-operator": "^7.17.12",
    "@babel/plugin-proposal-numeric-separator": "^7.16.7",
    "@babel/plugin-proposal-optional-chaining": "^7.17.12",
    "@babel/plugin-syntax-dynamic-import": "^7.8.3",
    "@babel/plugin-transform-runtime": "^7.18.5",
    "@babel/preset-env": "^7.18.2",
    "@babel/preset-typescript": "^7.17.12",
    "@rollup/plugin-babel": "^6.0.3",
    "@rollup/plugin-commonjs": "^24.0.1",
    "@rollup/plugin-json": "^6.0.0",
    "@rollup/plugin-node-resolve": "^15.0.1",
    "@types/eslint-plugin-prettier": "^3.1.0",
    "@types/jest": "^27.0.3",
    "@types/prettier": "^2.6.3",
    "@types/rimraf": "^3",
    "@typescript-eslint/eslint-plugin": "^5.29.0",
    "@typescript-eslint/parser": "^5.29.0",
    "eslint": "^8.18.0",
    "eslint-config-prettier": "^8.5.0",
    "eslint-import-resolver-typescript": "^2.7.1",
    "eslint-plugin-import": "^2.26.0",
    "eslint-plugin-jsx-a11y": "^6.6.1",
    "eslint-plugin-prettier": "^4.2.1",
    "eslint-plugin-react": "^7.31.6",
    "eslint-plugin-react-hooks": "^4.6.0",
    "jest": "^29.5.0",
    "jest-environment-jsdom": "^29.5.0",
    "prettier": "^2.7.1",
    "react": "^18",
    "rimraf": "^3.0.2",
    "rollup": "^2.78.0",
    "ts-jest": "^29.0.5",
    "typescript": "^4.9.3"
  }
}
