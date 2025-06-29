# Nerdbank.Sdk

This package should be used as an MSBuild SDK.

## Installation

Create a `global.json` file in the root of your repo with this content:

```json
{
  "msbuild-sdks": {
    "Nerdbank.Sdk": "latest-version-here"
  }
}
```

Then in each of your MSBuild project files, replace the first line to use this SDK instead:

```diff
-<Project Sdk="Microsoft.NET.Sdk">
+<Project Sdk="Nerdbank.Sdk">
```

Learn more on [our doc site](https://aarnott.github.io/Nerdbank.Sdk/).
