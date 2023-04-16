---
to: packages/<%= name %>/tsconfig.typecheck.json
---
{
  "extends": "./tsconfig.json",
  "exclude": ["**/*.spec.ts",  "**/*.spec.tsx"]
}
