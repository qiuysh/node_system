module.exports = {
  root: true,
  extends: [
    'eslint:recommended',
    'airbnb-base',
    'plugin:prettier/recommended'
  ], //使用推荐的React代码检测规范
  env: {
    es6: true,
    node: true
  },
  parserOptions: {
    "sourceType": "script"
  },
  rules: {
    "prefer-const": "warn",
    "no-var": "warn",
    "one-var": "warn",
    "no-sequences": "warn",
    "no-cond-assign": "warn",
    "no-unused-expressions": ["warn", {
      "allowTernary": true
    }],
    "no-import-assign": "warn",
    "no-nested-ternary": "warn",
    "no-bitwise": "warn",
    "no-void": "warn",
    "no-restricted-globals": "warn",
    "yoda": "off",
    "prefer-destructuring": "warn",
    "class-methods-use-this": "warn",
    "import/no-extraneous-dependencies": ["error", {
      devDependencies: true,
      peerDependencies: true,
    }],
    "import/newline-after-import": ["warn", { "count": 2 }]
  }
};