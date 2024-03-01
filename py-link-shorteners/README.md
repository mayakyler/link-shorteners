# link-shorteners Package

This package exposes a list of all known link shorteners (also known as URL shorteners). 
This can help you block or filter link shorteners. We are promoting responsible link shortening practices and trying to cut down on spam.
Built by [Maya](https://mayakyler.com) from [y.gy](https://app.y.gy).

**Latest Version**: 1.0.9 released on 2024-Feb-17

## Table of Contents
- [Key Features](#key-features)
- [Installation](#installation)
- [Usage](#usage)
- [Contribution](#contribution)
- [License](#license)
- [Motivation](#motivation)

## Key Features

### Efficiently Block URL Shorteners
Empower your website's security by using the **link-shorteners** package to have access to a frequently-updated list of link shorteners. Use the list to efficiently block, filter, or review well-known URL shorteners such as bitly, t.co, ow.ly, tinyurl, shorturl and more. Protect your website from re-linking spam or potential security risks.

### Extremely Helpful for Link Shortening Platforms
This list empowers link shortening platforms to effectively restrict the usage of previously shortened links as replacements for destination URLs. This avoids chain shortening/unauditable re-linking, enhances security, prevents spam and enforce quality control.

### Open Source
**link-shorteners** package is open source, allowing developers (you!) to contribute and keep our list of link shorteners up-to-date.

## Installation

You can install the `link-shorteners` package using pip. Open your terminal and run the following command:

```bash
pip install link-shorteners
```

Make sure that you are always upgrading to the latest version of link-shorteners so your list of link shorteners is up-to-date!

## Usage
```python
from link_shorteners import link_shorteners_list
banned_shorteners = link_shorteners_list()

url_to_check = "https://bit.ly/abc123"

if any([x in url_to_check.lower() for x in banned_shorteners]):
    print("The URL is blocked")

```

## Contribution

The source code is open sourced and is currently hosted on GitHub at: https://github.com/mayakyler/link-shorteners

We welcome contributions from the community to enhance and expand the list of link shorteners. Feel free to submit issues or pull requests to add more link shorteners, ensuring that the package remains up-to-date and comprehensive.

> **IMPORTANT:** When updating a list of shorteners, make sure to update the `.txt` file in both the [npm package](https://github.com/mayakyler/link-shorteners/blob/main/js-link-shorteners/src/link-shorteners.txt) and [pypi package](https://github.com/mayakyler/link-shorteners/blob/main/py-link-shorteners/link_shorteners/link-shorteners.txt) to ensure consistency.

## License

[MIT](https://github.com/mayakyler/link-shorteners/blob/main/LICENSE)

## Motivation

Our motivation behind developing this package stems from our experience building [y.gy](https://app.y.gy/), a link shortening platform. Facing challenges such as spam from various link-shortening platforms, we created this list to empower developers and platforms to efficiently block unwanted links in destination URLs. By utilizing this package, you can enhance the security and integrity of your platform, making it a safer space for users.
