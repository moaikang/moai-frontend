---
to: packages/<%= name %>/tsconfig.json
---
{
  "extends": "../../tsconfig.json",
  "compilerOptions": {
    "target": "es6",
    "module": "commonjs",
    "declaration": true,
    "resolveJsonModule": true,
    "outDir": "./dist",
    "noUncheckedIndexedAccess": true,
    "useUnknownInCatchVariables": false,
    "jsxImportSource": "@emotion/react"
  },
  "include": ["src"]
}
