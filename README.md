# Dotfiles

## Swap caps lock and left control keys
* Copy `.Xmodmap`
* Reboot

## Firefox
* Install `Saka Key`
* Configure `Saka Key` keys
* Install `DuckDuckGo`

## zsh
* Install zsh

## Nerd font
* Get desired nerd font
* Align powerline characters

## Fontconfig
* Copy config

## Termite
* Install termite
* Copy config
* Copy `gtk.css` for padding

## Neovim
* Install Neovim
* Install `git` and `curl`
* Install `vim-plug`
* Copy config
* Run `:PlugInstall` in Neovim

## zsh
* Install `zplug`
* Copy config
* Run `zplug install`
* Copy `Pure` prompt
* Install `Pure` prompt

## Rofi
* Install rofi
* Copy config

## i3
* Install `i3`
* Install `i3blocks`
* Install `compton`
* Install `feh`
* Install `xclip`
* Install `light` to `~/Programs/static/light` (backlight and brightness controls)
* Install `ptpython` (calculator)
* Copy `compton` config
* Copy static scripts
* Copy `i3blocks` config
* Copy `i3` config
* Copy `ptpython` config
* Set `.fehbg`

## Disable wifi power management
* [Link](https://askubuntu.com/a/860754)
* In `/etc/NetworkManager/conf.d/default-wifi-powersave-on.conf`, change:

```
wifi.powersave = 3
```

to

```
wifi.powersave = 2
```

* Reboot

## Use libinput driver instead of synaptics
* [Link](https://unix.stackexchange.com/a/292920)
* Run:

```
sudo apt-get install libinput10 xserver-xorg-input-libinput
sudo apt-get remove xserver-xorg-input-synaptics
```

* Reboot


## Firefox override GTK theme
* [Link](https://www.reddit.com/r/firefox/comments/6rbvvw/photon_rectangular_tabs_have_landed_in_nightly/dl4318f)
* Go to `about:config`
* Right click and create a new `string` pref
  * Name: `widget.content.gtk-theme-override`
  * Value: `Arc` (or whatever GTK theme)

## Weechat
* Run:
```
sudo apt-get install python-notify
```

* Run:
```
/script
# install and autoload: colorize_nicks, go, anotify
/mouse enable
/server add rizon irc.rizon.net 6697 -ssl -autoconnect
/set weechat.bar.status.color_bg 237
/set weechat.bar.title.color_bg 237
/set buflist.format.buffer_current "${format_number}${color:cyan}${name}"
/set weechat.bar.buflist.position top
/set weechat.color.chat_time 243
/set weechat.color.chat_prefix_suffix 239
/set weechat.color.separator 239
/key bind ctrl-O /bar toggle nicklist;/bar toggle status;/bar toggle title
/set weechat.color.chat_nick_colors cyan,magenta,210,green,lightblue,lightcyan,lightmagenta,lightgreen,blue,11,146,178,174,brown,215,150,151,109
/set weechat.look.prefix_suffix ¦
/key bind ctrl-G /go
```

## ncmpcpp and mpd
* Install ncmpcpp and mpd
* Copy configs
* Run this:

```
sudo systemctl disable mpd
```

* Add this to `.profile` (if not already there (it's probably already there))

```
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
```

* Run this:

```
mkdir ~/.config/mpd/playlists
```

## Nemo open in terminal
* Install `dconf-editor`
* Change `org.cinnamon.desktop.default-applications.terminal.exec` to `termite`
* Change `org.cinnamon.desktop.default-applications.terminal.exec-args` to `-e`

## Nemo use Neovim in termite
* Create the file `/home/plushie/.local/share/applications/nvim-termite.desktop` (if not already there)
* Add this to the file:

```
[Desktop Entry]
Name=Neovim Termite
GenericName=Text Editor
GenericName[de]=Texteditor
Comment=Edit text files
Comment[af]=Redigeer tekslêers
Comment[am]=የጽሑፍ ፋይሎች ያስተካክሉ
Comment[ar]=حرّر ملفات نصية
Comment[az]=Mətn fayllarını redaktə edin
Comment[be]=Рэдагаваньне тэкставых файлаў
Comment[bg]=Редактиране на текстови файлове
Comment[bn]=টেক্স্ট ফাইল এডিট করুন
Comment[bs]=Izmijeni tekstualne datoteke
Comment[ca]=Edita fitxers de text
Comment[cs]=Úprava textových souborů
Comment[cy]=Golygu ffeiliau testun
Comment[da]=Redigér tekstfiler
Comment[de]=Textdateien bearbeiten
Comment[el]=Επεξεργασία αρχείων κειμένου
Comment[en_CA]=Edit text files
Comment[en_GB]=Edit text files
Comment[es]=Edita archivos de texto
Comment[et]=Redigeeri tekstifaile
Comment[eu]=Editatu testu-fitxategiak
Comment[fa]=ویرایش پرونده‌های متنی
Comment[fi]=Muokkaa tekstitiedostoja
Comment[fr]=Édite des fichiers texte
Comment[ga]=Eagar comhad Téacs
Comment[gu]=લખાણ ફાઇલોમાં ફેરફાર કરો
Comment[he]=ערוך קבצי טקסט
Comment[hi]=पाठ फ़ाइलें संपादित करें
Comment[hr]=Uređivanje tekstualne datoteke
Comment[hu]=Szövegfájlok szerkesztése
Comment[id]=Edit file teks
Comment[it]=Modifica file di testo
Comment[ja]=テキストファイルを編集します
Comment[kn]=ಪಠ್ಯ ಕಡತಗಳನ್ನು ಸಂಪಾದಿಸು
Comment[ko]=텍스트 파일을 편집합니다
Comment[lt]=Redaguoti tekstines bylas
Comment[lv]=Rediģēt teksta failus
Comment[mk]=Уреди текстуални фајлови
Comment[ml]=വാചക രചനകള് തിരുത്തുക
Comment[mn]=Текст файл боловсруулах
Comment[mr]=गद्य फाइल संपादित करा
Comment[ms]=Edit fail teks
Comment[nb]=Rediger tekstfiler
Comment[ne]=पाठ फाइललाई संशोधन गर्नुहोस्
Comment[nl]=Tekstbestanden bewerken
Comment[nn]=Rediger tekstfiler
Comment[no]=Rediger tekstfiler
Comment[or]=ପାଠ୍ଯ ଫାଇଲଗୁଡ଼ିକୁ ସମ୍ପାଦନ କରନ୍ତୁ
Comment[pa]=ਪਾਠ ਫਾਇਲਾਂ ਸੰਪਾਦਨ
Comment[pl]=Edytor plików tekstowych
Comment[pt]=Editar ficheiros de texto
Comment[pt_BR]=Edite arquivos de texto
Comment[ro]=Editare fişiere text
Comment[ru]=Редактор текстовых файлов
Comment[sk]=Úprava textových súborov
Comment[sl]=Urejanje datotek z besedili
Comment[sq]=Përpuno files teksti
Comment[sr]=Измени текстуалне датотеке
Comment[sr@Latn]=Izmeni tekstualne datoteke
Comment[sv]=Redigera textfiler
Comment[ta]=உரை கோப்புகளை தொகுக்கவும்
Comment[th]=แก้ไขแฟ้มข้อความ
Comment[tk]=Metin faýllary editle
Comment[tr]=Metin dosyalarını düzenle
Comment[uk]=Редактор текстових файлів
Comment[vi]=Soạn thảo tập tin văn bản
Comment[wa]=Asspougnî des fitchîs tecses
Comment[zh_CN]=编辑文本文件
Comment[zh_TW]=編輯文字檔
Exec=termite -e "nvim %F" %f
Type=Application
Keywords=Text;editor;
Icon=nvim
Categories=Utility;TextEditor;
StartupNotify=false
MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
NoDisplay=true
```

## Apache in local directory

In `/etc/apache2/apache2.conf`:

```
<Directory /home/plushie/Programs/web/>
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>
```

In `/etc/apache2/sites-available/000-default.conf`:

```
DocumentRoot /home/plushie/Programs/web/
```
