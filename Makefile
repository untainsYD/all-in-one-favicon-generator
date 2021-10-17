# All-in-one website favicon generator
# Copyright (C) 2019  Illya Marchenko <stuzer05@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

CC = magick convert
SOURCE ?= source.png

# Files & forlders
DIST = dist
override DIST := $(DIST)/
override dist_public = $(DIST)public/
override dist_icons = $(DIST)public/icons/

ICON_PATH = /icons
override ICON_PATH := $(ICON_PATH)/

override define file_manifest
@echo '{' > $(dist_public)manifest.json
@echo '    "name": "",' >> $(dist_public)manifest.json
@echo '    "short_name": "",' >> $(dist_public)manifest.json
@echo '    "icons": [' >> $(dist_public)manifest.json
@echo '        {' >> $(dist_public)manifest.json
@echo '            "src": "'$(ICON_PATH)'android-chrome-192x192.png",' >> $(dist_public)manifest.json
@echo '            "sizes": "192x192",' >> $(dist_public)manifest.json
@echo '            "type": "image/png"' >> $(dist_public)manifest.json
@echo '        },' >> $(dist_public)manifest.json
@echo '        {' >> $(dist_public)manifest.json
@echo '            "src": "'$(ICON_PATH)'android-chrome-512x512.png",' >> $(dist_public)manifest.json
@echo '            "sizes": "512x512",' >> $(dist_public)manifest.json
@echo '            "type": "image/png"' >> $(dist_public)manifest.json
@echo '        }' >> $(dist_public)manifest.json
@echo '    ],' >> $(dist_public)manifest.json
@echo '    "theme_color": "",' >> $(dist_public)manifest.json
@echo '    "background_color": "",' >> $(dist_public)manifest.json
@echo '    "display": "standalone"' >> $(dist_public)manifest.json
@echo '}' >> $(dist_public)manifest.json
endef

override define file_ieconfig
@echo '<?xml version="1.0" encoding="utf-8"?>' > $(dist_icons)ieconfig.xml
@echo '<browserconfig>' >> $(dist_icons)ieconfig.xml
@echo '    <msapplication>' >> $(dist_icons)ieconfig.xml
@echo '        <tile>' >> $(dist_icons)ieconfig.xml
@echo '            <square70x70logo src="'$(ICON_PATH)'mstile-small.png"/>' >> $(dist_icons)ieconfig.xml
@echo '            <square150x150logo src="'$(ICON_PATH)'mstile-medium.png"/>' >> $(dist_icons)ieconfig.xml
@echo '            <wide310x150logo src="'$(ICON_PATH)'mstile-wide.png"/>' >> $(dist_icons)ieconfig.xml
@echo '            <square310x310logo src="'$(ICON_PATH)'mstile-large.png"/>' >> $(dist_icons)ieconfig.xml
@echo '            <TileColor>#ffffff</TileColor>' >> $(dist_icons)ieconfig.xml
@echo '        </tile>' >> $(dist_icons)ieconfig.xml
@echo '    </msapplication>' >> $(dist_icons)ieconfig.xml
@echo '</browserconfig>' >> $(dist_icons)ieconfig.xml
endef

override define file_source
@echo '<!-- Regular icons -->' > $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-57x57.png" sizes="57x57">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-76x76.png" sizes="76x76">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-96x96.png" sizes="96x96">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-128x128.png" sizes="128x128">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-192x192.png" sizes="192x192">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-196x196.png" sizes="196x196">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-228x228.png" sizes="228x228">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-16x16.png" sizes="16x16">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-32x32.png" sizes="32x32">' >> $(DIST)source.html
@echo '<link rel="icon" type="image/png" href="'$(ICON_PATH)'favicon-48x48.png" sizes="48x48">' >> $(DIST)source.html
@echo '' >> $(DIST)source.html
@echo '<!-- Android icons -->' >> $(DIST)source.html
@echo '<link rel="shortcut icon" sizes="196x196" href="'$(ICON_PATH)'favicon-196x196.png">' >> $(DIST)source.html
@echo '<link rel="manifest" href="manifest.json">' >> $(DIST)source.html
@echo '' >> $(DIST)source.html
@echo '<!-- Apple icons -->' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="57x57" href="'$(ICON_PATH)'apple-touch-icon-57x57.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="114x114" href="'$(ICON_PATH)'apple-touch-icon-114x114.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="72x72" href="'$(ICON_PATH)'apple-touch-icon-72x72.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="144x144" href="'$(ICON_PATH)'apple-touch-icon-144x144.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="60x60" href="'$(ICON_PATH)'apple-touch-icon-60x60.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="120x120" href="'$(ICON_PATH)'apple-touch-icon-120x120.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="76x76" href="'$(ICON_PATH)'apple-touch-icon-76x76.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="152x152" href="'$(ICON_PATH)'apple-touch-icon-152x152.png">' >> $(DIST)source.html
@echo '<link rel="apple-touch-icon" sizes="180x180" href="'$(ICON_PATH)'apple-touch-icon.png">' >> $(DIST)source.html
@echo '' >> $(DIST)source.html
@echo '<!-- IE 10 Metro tile icons -->' >> $(DIST)source.html
@echo '<meta name="msapplication-TileColor" content="#ffffff">' >> $(DIST)source.html
@echo '<meta name="msapplication-TileImage" content="'$(ICON_PATH)'mstile-144x144.png">' >> $(DIST)source.html
@echo '' >> $(DIST)source.html
@echo '<!-- IE 11 Metro tile for Windows 8.1 start screen -->' >> $(DIST)source.html
@echo '<meta name="application-name" content="Application name">' >> $(DIST)source.html
@echo '<meta name="msapplication-tooltip" content="Tooltip">' >> $(DIST)source.html
@echo '<meta name="msapplication-config" content="'$(ICON_PATH)'ieconfig.xml">' >> $(DIST)source.html
endef

all: $(SOURCE)
	-mkdir $(DIST) $(dist_public) $(dist_icons)

	@echo "Generating.. Regular icons"
	@$(CC) $(SOURCE) -resize 16x16 $(dist_icons)favicon-16x16.png
	@$(CC) $(SOURCE) -resize 32x32 $(dist_icons)favicon-32x32.png
	@$(CC) $(SOURCE) -resize 48x48 $(dist_icons)favicon-48x48.png
	@$(CC) $(SOURCE) -resize 57x57 $(dist_icons)favicon-57x57.png
	@$(CC) $(SOURCE) -resize 76x76 $(dist_icons)favicon-76x76.png
	@$(CC) $(SOURCE) -resize 96x96 $(dist_icons)favicon-96x96.png
	@$(CC) $(SOURCE) -resize 128x128 $(dist_icons)favicon-128x128.png
	@$(CC) $(SOURCE) -resize 192x192 $(dist_icons)favicon-192x192.png
	@$(CC) $(SOURCE) -resize 192x192 $(dist_icons)favicon-196x196.png
	@$(CC) $(SOURCE) -resize 228x228 $(dist_icons)favicon-228x228.png

	@echo "Packing.. triple-sized favicon.ico"
	@$(CC) $(dist_icons)favicon-16x16.png $(dist_icons)favicon-32x32.png $(dist_icons)favicon-48x48.png $(dist_public)favicon.ico

	@echo "Generating.. Android icons"
	@$(CC) $(SOURCE) -resize 196x196 $(dist_icons)favicon-196x196.png
	@$(CC) $(SOURCE) -resize 192x192 $(dist_icons)android-chrome-192x192.png
	@$(CC) $(SOURCE) -resize 196x196 $(dist_icons)android-chrome-512x512.png

	@echo "Generating.. Apple icons"
	@$(CC) $(SOURCE) -resize 57x57 $(dist_icons)apple-touch-icon-57x57.png
	@$(CC) $(SOURCE) -resize 114x114 $(dist_icons)apple-touch-icon-114x114.png
	@$(CC) $(SOURCE) -resize 72x72 $(dist_icons)apple-touch-icon-72x72.png
	@$(CC) $(SOURCE) -resize 144x144 $(dist_icons)apple-touch-icon-144x144.png
	@$(CC) $(SOURCE) -resize 60x60 $(dist_icons)apple-touch-icon-60x60.png
	@$(CC) $(SOURCE) -resize 120x120 $(dist_icons)apple-touch-icon-120x120.png
	@$(CC) $(SOURCE) -resize 76x76 $(dist_icons)apple-touch-icon-76x76.png
	@$(CC) $(SOURCE) -resize 152x152 $(dist_icons)apple-touch-icon-152x152.png
	@$(CC) $(SOURCE) -resize 180x180 $(dist_icons)apple-touch-icon.png
	@$(CC) $(SOURCE) -resize 180x180 $(dist_public)apple-touch-icon.png
	@$(CC) $(SOURCE) -resize 180x180 -quality 80% $(dist_public)apple-touch-icon-precomposed.png

	@echo "Generating.. IE 10 Metro tile icons"
	@$(CC) $(SOURCE) -resize 144x144 $(dist_icons)mstile-144x144.png

	@echo "Generating.. IE 11 Metro tile for Windows 8.1 start screen"
	@$(CC) $(SOURCE) -resize 70x70 $(dist_icons)mstile-small.png
	@$(CC) $(SOURCE) -resize 150x150 $(dist_icons)mstile-medium.png
	@$(CC) $(SOURCE) -resize 310x150 $(dist_icons)mstile-wide.png
	@$(CC) $(SOURCE) -resize 310x310 $(dist_icons)mstile-large.png

	@echo "Generating.. manifest.json"
	$(file_manifest)

	@echo "Generating.. ieconfig.xml"
	$(file_ieconfig)

	@echo "Generating.. source.html"
	$(file_source)

	@echo "Done."

.PHONY: clean
clean:
	$(RM) -r $(DIST)* $(subst /,,$(DIST))
