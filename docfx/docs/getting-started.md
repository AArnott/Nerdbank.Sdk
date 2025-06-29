# Getting Started

## Install the SDK

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

Make sure your `nuget.config` file includes a feed with the `Nerdbank.Sdk` package in it (e.g. nuget.org).

## Conform to SDK expectations

### Nerdbank.GitVersioning

This SDK versions binaries and packages using [Nerdbank.GitVersioning](https://dotnet.github.io/Nerdbank.GitVersioning/).
You should [create a `version.json` file](https://dotnet.github.io/Nerdbank.GitVersioning/docs/versionJson.html) in the root of your repo.

### Repo structure

Place your source projects under a `src` directory at the root of your repo.
Place your test projects under a `test` directory at the root of your repo.

```
:/ repo root
├───src
│   └───YourLibrary
├───test
│   └───YourLibrary.Tests
├───global.json
```

This SDK has special treatment for files and directories in these locations.

## Additional optimizations

This SDK works great with [Library.Template v2](https://github.com/AArnott/Library.Template/tree/v2).
