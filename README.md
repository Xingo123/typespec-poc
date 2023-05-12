Using TypeSpec, you can create reusable patterns for all aspects of an API, along with the ability to check for and flag known anti-patterns. These patterns establish "guardrails" for API designers and make it easier to follow best practices than deviate from them. TypeSpec promotes highly regular API designs that adhere to best practices by construction.

You can try a work-in-progress build of the compiler by following the steps in
the Getting Started section below. Please feel free to [file
issues](https://github.com/Microsoft/typespec/issues) for any issues you encounter while
using the preview.

## Try TypeSpec without installing anything

You can try TypeSpec on the web without installing anything.

- [TypeSpec playground](https://cadlplayground.z22.web.core.windows.net)
- [TypeSpec playground for Azure services](https://cadlplayground.z22.web.core.windows.net/cadl-azure/)

## Getting Started

For documentation for TypeSpec language, see https://microsoft.github.io/typespec.

### Using Docker

[See docker documentation](./docker)

### Using Node & Npm

#### One-time Setup

1. Install [Node.js 16 LTS](https://nodejs.org/en/download/) and ensure you are able to run the `npm` command in a command prompt:

   ```bash
   npm --version
   ```

   It is recommended to have npm 7+. To update npm run `npm install -g npm`

2. Install TypeSpec compiler and libraries:

```bash
   npm init -y
   npm install -g @typespec/compiler
```

If you do not wish to install the compiler globally with `-g` flag, you will need to install it locally once in every TypeSpec project folder. You would also need to prefix every TypeSpec run command with `npx`. See [npx documentation](https://docs.npmjs.com/cli/v7/commands/npx)

```bash
    npx tsp init
    npx tsp compile
```

3. Install the TypeSpec extension for your editor of choice:

   - [Instructions for Visual Studio](#installing-visual-studio-extension)
   - [Instructions for Visual Studio Code](#installing-vs-code-extension)
