# Argos URI handler for `bitbar://`

This project allows you to install BitBar/Argos plugins from a Web Browser directly to your system, no terminal involved!

## Installation

This package can be installed from the AUR [argos-uri-installer-git](https://aur.archlinux.org/packages/argos-uri-installer-git/), or you can follow the following steps:S

### 1. Install Script

  ```bash
        curl https://raw.githubusercontent.com/chabad360/argos-installer/master/install.sh | sudo sh
  ```

### 2. Wait a Second (or two), and Refresh the Page

### 3. Press the Button

[![Add to Argos](https://img.shields.io/static/v1?style=for-the-badge&logo=addthis&message=Add+to+Argos&color=green&logoColor=white&label=&link="bitbar://openPlugin?title=Cycle%20text%20and%20detail%20text&src="https://github.com/matryer/bitbar-plugins/raw/master/Tutorial%2fcycle_text_and_detail.sh")](http://bit.do/cycle_text_and_detail-sh)

If the button doesn't work, open this link: [`bitbar://openPlugin?title=Cycle%20text%20and%20detail%20text&src=https://github.com/matryer/bitbar-plugins/raw/master/Tutorial%2fcycle_text_and_detail.sh`](http://bit.do/cycle_text_and_detail-sh)

___

## Info

### Button Source

```markdown
[![Add to Argos](https://img.shields.io/static/v1?style=for-the-badge&logo=addthis&message=Add+to+Argos&color=green&logoColor=white&label=&link="bitbar://openPlugin?title=<YOUR PLUGIN NAME HERE (OPTIONAL)>&src=https://<LINK.TO/PLUGIN.SH>")](<SHORTENED LINK>)
```

### Showing Installation Links in Github

Github by defualt disables not standard URI's in READMEs, so in order to include `bitbar://` links in github, I recommend using the [bit.do](bit.do) URL Shortner.
It's the only free url shortning service I could find that didn't require an account and let me use `bitbar://` as a URI schema.

### The Schema

```uri

bitbar://openPlugin?title=<YOUR PLUGIN NAME HERE (OPTIONAL)>&src=https://<LINK.TO/PLUGIN.SH>

```
