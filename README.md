
# Installs a URI handler for `bitbar://`

##### This allows you to install BitBar/Argos plugins from a Web Browser to your system

To install simply run:

```bash

curl https://raw.githubusercontent.com/chabad360/argos-installer/master/install.sh | sudo sh

```

To make sure it works, wait a minute, refresh the page, and press this button.

[![Add to Argos](https://img.shields.io/static/v1?style=for-the-badge&logo=addthis&message=Add%20%20to%20Argos&color=green&logoColor=white&label=&link="bitbar://openPlugin?title=Cycle%20text%20and%20detail%20text&src=https://github.com/matryer/bitbar-plugins/raw/master/Tutorial%2fcycle_text_and_detail.sh")](http://bit.do/e4QZ9)

If that doesn't work open this link: `bitbar://openPlugin?title=Cycle%20text%20and%20detail%20text&src=https://github.com/matryer/bitbar-plugins/raw/master/Tutorial%2fcycle_text_and_detail.sh`

___

### About Installation Links

In order to include `bitbar://` links in github, I reccomend [bit.do](bit.do), it's the only free url shortning service I could find that didn't require an account and let me use `bitbar://` as a URI schema.

___

### The Schema

```uri

bitbar://openPlugin?title=<YOUR PLUGIN TITLE HERE (OPTIONAL)>&src=<FULL LINK TO PLUGIN FILE>

```
