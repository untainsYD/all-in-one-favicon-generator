# All-in-one favicon generator
Generates all necessary favicons for your website.
This includes iOS Safari, Google Chrome, Mozilla Firefox, Windows 8 and 10, and possibly some other browsers.

## Getting Started
To get started with favicon generator you need to make sure [ImageMagick](https://imagemagick.org/index.php) and the latest [GNU make](https://www.gnu.org/software/make/) software are installed and present in your PATH environment variable.

## Configuration
By default, makefile uses `convert` file of ImageMagick software, but you can change that by specifying a new name as a parameter for make
```make
make CC=<executable name>
```
or by changing the following line in a makefile
```
CC = magick
```

Also, the default image filename make is looking for is `source.png`, and you can change that either passing the new filename as a parameter
```
make SOURCE=<image filename>
```
or by changing the following line
```
SOURCE ?= <image filename>
```

## Using bash
You use bash script `generate.sh` to use the program anywhere on your system. First of, you have to create a symbolic link to an executable using the following command
```bash
$ ln -s <path to program>/generate.sh ~/.local/bin/webicongen
# example: ln -s ~/Programs/Favicons_generation/generate.sh ~/.local/bin/webicongen
```
then you can use it in such a way
```bash
$ webicongen <image> <output dir>
```
The output directory will be created automatically.

## Usage
After everything is configured, simply place your image in the same directory as makefile, and then simply run `make`. It will generate the following directory structure
```
dist/
├── public/
│   ├── apple-touch-icon.png
│   ├── apple-touch-icon-precomposed.png
│   ├── favicon.ico
│   ├── icons/
│   │   ├── android-chrome-192x192.png
│   │   ├── android-chrome-512x512.png
│   │   ├── apple-touch-icon-114x114.png
│   │   ├── apple-touch-icon-120x120.png
│   │   ├── apple-touch-icon-144x144.png
│   │   ├── apple-touch-icon-152x152.png
│   │   ├── apple-touch-icon-57x57.png
│   │   ├── apple-touch-icon-60x60.png
│   │   ├── apple-touch-icon-72x72.png
│   │   ├── apple-touch-icon-76x76.png
│   │   ├── apple-touch-icon.png
│   │   ├── favicon-128x128.png
│   │   ├── favicon-16x16.png
│   │   ├── favicon-192x192.png
│   │   ├── favicon-196x196.png
│   │   ├── favicon-228x228.png
│   │   ├── favicon-32x32.png
│   │   ├── favicon-48x48.png
│   │   ├── favicon-57x57.png
│   │   ├── favicon-76x76.png
│   │   ├── favicon-96x96.png
│   │   ├── ieconfig.xml
│   │   ├── mstile-144x144.png
│   │   ├── mstile-large.png
│   │   ├── mstile-medium.png
│   │   ├── mstile-small.png
│   │   └── mstile-wide.png
│   └── manifest.json
└── source.html
```
`source.html` contains HTML code that needs to be pasted in your document's head.

`public` folder must be the same as your project's public folder, you can simply copy-paste it into your project (make sure you don't have one of these generated files already in your project, such as `manifest.json`).

---

## Acknowledgements
I would love to hear any ideas or issues regarding this makefile. Make sure to create an issue or a pull request.

You can also send me an email to stuzer05 at gmail.com
