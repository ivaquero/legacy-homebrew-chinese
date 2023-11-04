# Homebrew-Chinese

[![CI](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml/badge.svg)](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml) [![license](https://img.shields.io/github/license/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/languages/license/homebrew-chinese.svg) [![code-size](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg) [![repo-size](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)

一个致力于服务国人的 [Homebrew](https://github.com/Homebrew/brew) 🍺 第三方库

本仓库主要收录以下软件：

- 开源软件的国内镜像
- 国人开发的开源软件（未被 Homebrew 官方收录）
- 国产商业软件

## 开始 🏃

### 安装 Homebrew 🍺 🚴

在终端中运行以下命令：

```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap ivaquero/chinese
```

国内源

```sh
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
brew tap ivaquero/chinese
```

更多相关信息，请访问 Homebrew 官方网站 👉 [https://brew.sh/](https://brew.sh/) 👈

### 从本仓库安装应用程序 🚅

- 第 1 步：添加此仓库并进行更新，么么哒~ 💋

在终端中运行以下命令：

```sh
brew tap ivaquero/chinese
brew update
```

- 步骤 2：安装应用程序 ✈️

- 通过 `brew search` 命令检查 App 的确切名称：

```sh
brew search <app_name>
```

```markdown
brew cask install <app_name>
```

- For specific installation

```sh
brew install chinese/<app_name>
```

### 其他

- 推荐：添加官方仓库 🚀

```sh
brew tap homebrew/homebrew-cask
brew update
```

- 用于 Homebrew 命令 📖

```sh
brew help
```

## 总结

### GUI 软件

|                                         App 名                                          |      Cask 名      |           类型            | 原创 |
| :-------------------------------------------------------------------------------------: | :---------------: | :-----------------------: | :--: |
|                  [GridPlayer](https://github.com/vzhd1701/gridplayer)                   |   `gridplayer`    |        🆓开源软件         |  √   |
|                          [Pareto](https://paretosecurity.com)                           | `pareto-security` |        🆓开源软件         |  √   |
|                       [PeaZip](https://github.com/peazip/PeaZip)                        |     `peazip`      |        🆓开源软件         |  √   |
|              [纤毫毕现](https://github.com/cormiertyshawn895/PixelPerfect)              |  `pixel-perfect`  |        🆓开源软件         |  √   |
|          [AList 官方桌面客户端](https://github.com/alist-org/desktop-release)           |  `alist-desktop`  | 🆓💰开源软件（国人开发） |  √   |
| [Alist-Helper](https://github.com/Xmarmalade/alisthelper/blob/master/README_zh-Hans.md) |  `alist-helper`   |  🆓开源软件（国人开发）   |  √   |
|                       [ChatGPT](https://github.com/lencx/ChatGPT)                       |      chatgpt      |   开源软件（国人开发）    |  √   |
|                  [Clash-Verge](https://github.com/zzzgydi/clash-verge)                  |    clash-verge    |  🆓开源软件（国人开发）   |  √   |
|              [GoldenDict-ng](https://github.com/xiaoyifang/goldendict-ng)               |   goldendict-ng   |   开源软件（国人开发）    |  √   |
|                              [Gopeed](https://gopeed.com/)                              |      gopeed       |  🆓开源软件（国人开发）   |  √   |
|            [OpenAI-Translator](https://github.com/yetone/openai-translator)             | openai-translator |  🆓开源软件（国人开发）   |  √   |
|                  [Pot-Desktop](https://github.com/pot-app/pot-desktop)                  |    pot-desktop    |  🆓开源软件（国人开发）   |  √   |
|             [M3U8Downloader](https://github.com/HeiSir2014/M3U8-Downloader)             |  m3u8-downloader  |   开源软件（国人开发）    |  √   |
|                     [MessAuto](https://github.com/LeeeSe/MessAuto)                      |     messauto      |  🆓开源软件（国人开发）   |  √   |
|                        [Yank-Note](https://yank-note.com/zh-CN)                         |     yank-note     |  🆓开源软件（国人开发）   |  √   |
|                         [Blender 镜像](https://www.blender.org)                         |    blender-cn     |       开源软件镜像        |  √   |
|                       [FreeCAD 镜像](https://www.freecadweb.org)                        |    freecad-cn     |       开源软件镜像        |  √   |
|              [BasicTeX 镜像](https://www.tug.org/mactex/morepackages.html)              |    basictex-cn    |       开源软件镜像        |  √   |
|                            [GIMP 镜像](https://www.gimp.org)                            |      gimp-cn      |       开源软件镜像        |  √   |
|                              [IINA 镜像](https://iina.io)                               |      iina-cn      |       开源软件镜像        |  √   |
|                          [Inkscape 镜像](https://inkscape.org)                          |    inkscape-cn    |       开源软件镜像        |  √   |
|                           [Julia 镜像](https://julialang.org)                           |     julia-cn      |       开源软件镜像        |  √   |
|                             [Kicad 镜像](https://kicad.org)                             |     kicad-cn      |      🆓开源软件镜像       |  √   |
|                     [LibreOffice 镜像](https://www.libreoffice.org)                     |  libreoffice-cn   |       开源软件镜像        |  √   |
|                             [Lyx 镜像](https://www.lyx.org)                             |      lyx-cn       |       开源软件镜像        |  √   |
|               [Mambaforge 镜像](https://github.com/conda-forge/miniforge)               |   mambaforge-cn   |       开源软件镜像        |  √   |
|               [Miniforge 镜像](https://github.com/conda-forge/miniforge)                |   miniforge-cn    |       开源软件镜像        |  √   |
|                        [OBS Studio 镜像](https://obsproject.com)                        |      obs-cn       |      🆓开源软件镜像       |  √   |
|                     [Qt Creator 镜像](https://www.qt.io/developers)                     |   qt-creator-cn   |       开源软件镜像        |  √   |
|                         [TeXStudio 镜像](https://texstudio.org)                         |   texstudio-cn    |      🆓开源软件镜像       |  √   |
|                        [VLC 镜像](https://www.videolan.org/vlc)                         |      vlc-cn       |      🆓开源软件镜像       |  √   |
|                  [VSCodium 镜像](https://github.com/VSCodium/vscodium)                  |    vscodium-cn    |       开源软件镜像        |  √   |
|                  [西语助手](https://www.eudic.net/v4/es/app/eshelper)                   |     eshelper      |       国产商业软件        |  √   |
|               [每日法语听力](http://www.francochinois.com/v4/fr/app/ting)               |      ting-fr      |       国产商业软件        |  √   |
|               [每日英语听力](http://www.francochinois.com/v4/en/app/ting)               |      ting-en      |       国产商业软件        |  √   |
|               [每日西语听力](http://www.francochinois.com/v4/es/app/ting)               |      ting-es      |       国产商业软件        |  √   |
|                              [HapiGo](https://hapigo.com)                               |      hapogo       |     🆓💰国产商业软件     |  √   |
|                              [爱思助手](https://www.i4.cn)                              |      i4tools      |      🆓国产商业软件       |  √   |
|                           [易有云](https://doc.linkease.com)                            |     linkease      |      🆓国产商业软件       |  √   |
|                   [亿图图示 9 （固定版本）](http://www.edrawsoft.cn)                    |    edrawmax-9     |       国产商业软件        |  √   |
|            [App Cleaner （中文专供版）](https://nektony.com/mac-app-cleaner)            |  app-cleaner-cn   |        💰商业软件        |  √   |
|                        [baRSS](https://relikd.de/projects/barss)                        |       barss       |        🆓开源软件         |  √   |
|               [Amazon Corretto 8](https://github.com/corretto/corretto-8)               |    corretto-8     |         开源软件          |  √   |
|                      [知网研学（原E-Study）](https://e-study.com)                       |      e-study      |     🆓💰国产商业软件     |  √   |
|                 [Easy To TV](https://github.com/duolabmeng6/easy_to_tv)                 |    easy-to-tv     |      🆓国产开源软件       |  √   |
|                           [飞鸽传书](http://www.ipmsg.org.cn)                           |       feige       |       国产商业软件        |  √   |
|                      [FreeFileSync](https://www.freefilesync.org)                       |   freefilesync    |        🆓开源软件         |  √   |
|                              [Later](https://getlater.app)                              |       later       |        🆓开源软件         |  √   |
|                              [零泉](https://lingquan.cool)                              |     lingquan      |     🆓💰国产商业软件     |  √   |
|           [LyricsX JH Fork](https://github.com/JH-Application-Forks/LyricsX)            |     lyricsxjh     |      🆓开源软件分支       |  √   |
|                    [OpenStudio](https://github.com/NREL/OpenStudio)                     |    openstudio     |         开源软件          |  √   |
|                             [Ryujinx](https://ryujinx.org)                              |      ryujinx      |        🆓开源软件         |  √   |
|                           [Upscayl](https://www.upscayl.org)                            |      upscayl      |        🆓开源软件         |  √   |
|                          [Z-Library](https://zlibrary-asia.se)                          |     zlibrary      |        🆓商业软件         |  √   |

### CLI 软件

|      名      |    CLI 名    |   类型   | 原创 |
| :----------: | :----------: | :------: | :--: |
| Music Player | music-player | 开源软件 |  √   |
|   Music DL   |   music-dl   | 开源软件 |  √   |
|    shurl     |    shurl     | 开源软件 |  √   |
|   ChatGPT    | chatgpt-cli  | 开源软件 |  √   |
|    BBDOWN    |    bbdown    | 开源软件 |  √   |
|   DDNS-Go    |   ddns-go    | 开源软件 |  √   |
