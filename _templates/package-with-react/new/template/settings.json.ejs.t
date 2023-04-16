---
to: packages/<%= name %>/.vscode/settings.json
---
{
  "typescript.tsdk": "../../.yarn/sdks/typescript/lib",
  "search.exclude": {
    "**/.yarn": true,
    "**/.pnp.*": true,
    ".next": true,
    "out": true
  },
  "eslint.nodePath": "../../.yarn/sdks",
  "prettier.prettierPath": "../../.yarn/sdks/prettier/index.js",
  "typescript.enablePromptUseWorkspaceTsdk": true
}
