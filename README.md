# Build dependencies
This is an extension to copy files from a dependency server (another directory in your file system) into your local project in order to build your project. This is usefull if you want to use npm as your [build tool](http://blog.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/), e.g. to build your Java applications.

## General usage
In order to use this script, create the following config properties in your `package.json` file:

```
"config": {
    "dependencies_base": "Y:/your/dependecy/server/location",
    "dependencies_dest": "lib/",
    "dependencies": [
      "some-dependency-3.4.5.jar"
    ]
}
```

Then the only thing you have to do is creating a scripts part in your `package.json` in order to collect the dependencies and add this extension into your dev-dependencies:

```
"devDependencies": {
    "build-dependencies": "^1.0.0"
},
"scripts": {
    "dependencies": "build-dependencies"
  }
```