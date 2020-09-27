# Fonts installation

Based on this blog entry about better fonts choice for Linux:
<https://aswinmohan.me/posts/better-fonts-on-linux/>

Some fonts shall be installed from distribution packages manager.

## Used fonts

Sans-Serif font defaults to *TeX Gyre Heros*. An *Helvetica* compatible fonts.
Included in most Linux distribution packages.

Serif font defaults to *Libertinus Serif*. Not included in Linux distribution.
Extras fonts fallbacks are *Noto Serif* for more unicode support.

Monospace font defaults to *DM Mono*. Part of Google fonts catalog.
Fallback include *Space Mono* for bold support. Part of Google fonts catalog.
*IPAGothic* is used for display of Japanese glyphs in monospace.
*Inconsolatazi4* is a derivative of *inconsolata* with support of OpenType
features and monospace ligatures.

For Emoji display, *Noto Color Emoji* is used in fallback chain of fonts.

## Japanese glyphs

For Serif font, *IPAMincho* and *HanaMina* should improve display of Japanese
glyphs. For Sans Serif and Monospace font, *IPAGothic* will match better with
Latin based glyphs. Usage of *Source Han Sans JP*.

## Korean glyphs

For Sans Serif fonts, *NotoSansCJK* is used.

## Fonts projects:

- *TeX Gyre Heros*: <https://ctan.org/pkg/tex-gyre>
- *Libertinus*: <https://github.com/alerque/libertinus>
- *Noto*: <https://www.google.com/get/noto/>
- *DM Mono*: <https://fonts.google.com/specimen/DM+Mono>
- *Space Mono*: <https://fonts.google.com/specimen/Space+Mono>
- *Inconsolatazi4*: <https://ctan.org/tex-archive/fonts/inconsolata-zi4>
- *IPAMincho*: <https://ipafont.ipa.go.jp/old/ipafont/download.html#en>
- *IPAGothic*: <https://ipafont.ipa.go.jp/old/ipafont/download.html#en>
- *HanaMina*: <http://fonts.jp/hanazono/>

Replaced with *NotoSansCJK* (cf <https://en.wikipedia.org/wiki/Source_Han_Sans>):
- *Source Han Sans JP*: <https://github.com/adobe-fonts/source-han-code-jp>
- *Source Han Sans KR*: <https://github.com/adobe-fonts/source-han-sans>

## Fonts installable from packages manager

### Debian/Ubuntu

```shell
sudo apt install \
  fonts-texgyre \
  fonts-noto-core \
  fonts-noto-color-emoji \
  fonts-noto-extra \
  fonts-ipafont-mincho \
  fonts-ipafont-gothic \
  fonts-noto-cjk \
  fonts-noto-cjk-extra \
  fonts-open-sans
```

### Void Linux

Most fonts shall be downloaded from there respective web sites.

```shell
sudo xbps-install noto-fonts-ttf \
  tar unzip xz

#  TeX Gyre
wget http://mirrors.ctan.org/fonts/tex-gyre.zip
unzip -oj tex-gyre.zip 'tex-gyre/opentype/*.otf' -d "$HOME/.fonts"

# IPAMincho and IPAGothic
wget https://ipafont.ipa.go.jp/IPAfont/IPAfont00303.zip
unzip -oj IPAfont00303.zip 'IPAfont00303/*.ttf' -d "$HOME/.fonts"
```

### Fedora

Some fonts shall be downloaded from there respective web sites.

```shell
sudo dnf install -y \
  google-noto-emoji-color-fonts \
  google-noto-sans-fonts \
  google-noto-sans-vf-fonts \
  google-noto-sans-math-fonts \
  google-noto-sans-cjk-jp-fonts \
  google-noto-sans-cjk-kr-fonts \
  google-noto-sans-cjk-sc-fonts \
  google-noto-sans-cjk-tc-fonts \
  google-noto-serif-fonts \
  google-noto-serif-vf-fonts \
  google-noto-serif-cjk-jp-fonts \
  google-noto-serif-cjk-kr-fonts \
  google-noto-serif-cjk-sc-fonts \
  google-noto-serif-cjk-tc-fonts \
  google-noto-cjk-fonts \
  google-noto-sans-mono-fonts \
  google-noto-sans-mono-cjk-jp-fonts \
  google-noto-sans-mono-cjk-kr-fonts \
  google-noto-sans-mono-cjk-sc-fonts \
  google-noto-sans-mono-cjk-tc-fonts \
  open-sans-fonts \
  ipa-mincho-fonts \
  ipa-pmincho-fonts \
  ipa-gothic-fonts \
  ipa-pgothic-fonts \
  unzip

#  TeX Gyre
wget http://mirrors.ctan.org/fonts/tex-gyre.zip
unzip -oj tex-gyre.zip 'tex-gyre/opentype/*.otf' -d "$HOME/.fonts"
```
