[![NPM version](http://img.shields.io/npm/v/hubot-cool-ascii-faces.svg?style=flat)](https://www.npmjs.org/package/hubot-cool-ascii-faces)
[![Build Status](http://img.shields.io/travis/okize/hubot-cool-ascii-faces.svg?style=flat)](https://travis-ci.org/okize/hubot-cool-ascii-faces)
[![Dependency Status](http://img.shields.io/david/okize/hubot-cool-ascii-faces.svg?style=flat)](https://david-dm.org/okize/hubot-cool-ascii-faces)
[![Downloads](http://img.shields.io/npm/dm/hubot-cool-ascii-faces.svg?style=flat)](https://www.npmjs.org/package/hubot-cool-ascii-faces)

# Hubot: Cool Ascii Faces

Hubot script for [Max Ogden's](https://github.com/maxogden) [Cool Ascii Faces](https://github.com/maxogden/cool-ascii-faces).

## Usage

```
[okize] hubot face me
[hubot] ʕ•ᴥ•ʔ
```

## Installation

Add the package `hubot-cool-ascii-faces` as a dependency in your Hubot `package.json` file.

```javascript
"dependencies": {
  "hubot":              "2.x",
  "hubot-scripts":      "2.x",
  "hubot-cool-ascii-faces": "1.0.x"
}
```
Run the following command to make sure the module is installed.

    $ npm install hubot-cool-ascii-faces

To enable the script, add the `hubot-cool-ascii-faces` entry to the `external-scripts.json` file (you may need to create this file).

    ["hubot-cool-ascii-faces"]