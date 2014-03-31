[![NPM version](https://badge.fury.io/js/hubot-cool-ascii-faces.png)](http://badge.fury.io/js/hubot-cool-ascii-faces) [![NPM version](https://david-dm.org/okize/hubot-cool-ascii-faces.png)](https://david-dm.org/okize/hubot-cool-ascii-faces) [![Build Status](https://secure.travis-ci.org/okize/hubot-cool-ascii-faces.png)](http://travis-ci.org/okize/hubot-cool-ascii-faces)

# Hubot: Cool Ascii Faces

Hubot script for [Max Ogden's](https://github.com/maxogden) [Cool Ascii Faces](https://github.com/maxogden/cool-ascii-faces).

## Usage

```
[okize] hubot face me
[hubot] ʕ•ᴥ•ʔ
```

## Installation

Add the package `hubot-cool-ascii-faces` as a dependency in your Hubot `package.json` file.

    "dependencies": {
      "hubot-cool-ascii-faces": "1.0.x"
    }

Run the following command to make sure the module is installed.

    $ npm install hubot-cool-ascii-faces

To enable the script, add the `hubot-cool-ascii-faces` entry to the `external-scripts.json` file (you may need to create this file).

    ["hubot-cool-ascii-faces"]