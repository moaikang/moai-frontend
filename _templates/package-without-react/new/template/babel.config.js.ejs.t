---
to: packages/<%= name %>/babel.config.js
---
module.exports = {
  presets: [require.resolve('@babel/preset-env'), require.resolve('@babel/preset-typescript')],
  plugins: [
    require.resolve('@babel/plugin-proposal-optional-chaining'),
    require.resolve('@babel/plugin-proposal-nullish-coalescing-operator'),
    require.resolve('@babel/plugin-proposal-numeric-separator'),
    require.resolve('@babel/plugin-transform-runtime'),
  ],
};
