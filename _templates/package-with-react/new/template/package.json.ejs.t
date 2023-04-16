---
to: packages/<%= name %>/package.json
---
{
  "name": "@moai/<%= name %>",
  "description": "<%= description %>",
  "version": "0.0.1",
  "main": "src/index.ts",
  "module": "src/index.ts",
  "sideEffects": false,
  "publishConfig": {
    "main": "dist/index.js",
    "types": "dist/index.d.ts",
    "module": "esm/index.js"
  },
  "scripts": {
    "prepack": "yarn build",
    "build": "yarn clean && rollup -c && tsc --declaration --emitDeclarationOnly --declarationDir dist",
    "clean": "rimraf ./dist ./esm",
    "lint": "eslint -c .eslintrc.js '{pages,src}/**/*.{js,jsx,ts,tsx}'",
    "lint:fix": "yarn lint --fix",
    "typecheck": "tsc -p tsconfig.typecheck.json --noEmit"
  },
  "license": "UNLICENSED",
  "peerDependencies": {
    "@emotion/react": "^11",
    "@emotion/styled": "^11",
    "react": "*",
    "react-dom": "*"
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
    "@babel/preset-react": "^7.17.12",
    "@babel/preset-typescript": "^7.17.12",
    "@emotion/babel-preset-css-prop": "^11.2.0",
    "@emotion/react": "^11.9.3",
    "@emotion/styled": "^11.9.3",
    "@rollup/plugin-babel": "^5.3.0",
    "@rollup/plugin-commonjs": "^21.0.1",
    "@rollup/plugin-node-resolve": "^13.0.6",
    "@rollup/plugin-json": "^6.0.0",
    "@types/node": "^16.11.33",
    "@types/react": "^17.0.37",
    "@types/react-dom": "^17.0.11",
    "@typescript-eslint/eslint-plugin": "^5.29.0",
    "@typescript-eslint/parser": "^5.29.0",
    "eslint": "^8.18.0",
    "eslint-config-prettier": "^8.5.0",
    "eslint-import-resolver-typescript": "^2.7.1",
    "eslint-plugin-import": "^2.26.0",
    "eslint-plugin-jsx-a11y": "^6.6.1",
    "eslint-plugin-prettier": "^4.0.0",
    "eslint-plugin-react": "^7.31.6",
    "eslint-plugin-react-hooks": "^4.6.0",
    "prettier": "^2.7.1",
    "react": "^17.0.2",
    "react-dom": "^17.0.2",
    "rimraf": "^3.0.2",
    "rollup": "^2.60.2",
    "typescript": "^4.9.3"
  }
}
