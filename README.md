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

- 通过 brew search 命令检查 App 的确切名称：

```sh
brew search <app_name>
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

### 开源软件镜像

|    Cask 名     |                            App 名                             |     类型     | 原创 |
| :------------: | :-----------------------------------------------------------: | :----------: | :--: |
|   blender-cn   |            [Blender 镜像](https://www.blender.org)            | 开源软件镜像 |  √   |
|   freecad-cn   |          [FreeCAD 镜像](https://www.freecadweb.org)           | 开源软件镜像 |  √   |
|  basictex-cn   | [BasicTeX 镜像](https://www.tug.org/mactex/morepackages.html) | 开源软件镜像 |  √   |
|    gimp-cn     |               [GIMP 镜像](https://www.gimp.org)               | 开源软件镜像 |  √   |
|    iina-cn     |                 [IINA 镜像](https://iina.io)                  | 开源软件镜像 |  √   |
|  inkscape-cn   |             [Inkscape 镜像](https://inkscape.org)             | 开源软件镜像 |  √   |
|    julia-cn    |              [Julia 镜像](https://julialang.org)              | 开源软件镜像 |  √   |
|    kicad-cn    |                [Kicad 镜像](https://kicad.org)                | 开源软件镜像 |  √   |
| libreoffice-cn |        [LibreOffice 镜像](https://www.libreoffice.org)        | 开源软件镜像 |  √   |
|     lyx-cn     |                [Lyx 镜像](https://www.lyx.org)                | 开源软件镜像 |  √   |
| mambaforge-cn  |  [Mambaforge 镜像](https://github.com/conda-forge/miniforge)  | 开源软件镜像 |  √   |
|  miniforge-cn  |  [Miniforge 镜像](https://github.com/conda-forge/miniforge)   | 开源软件镜像 |  √   |
|     obs-cn     |           [OBS Studio 镜像](https://obsproject.com)           | 开源软件镜像 |  √   |
| qt-creator-cn  |        [Qt Creator 镜像](https://www.qt.io/developers)        | 开源软件镜像 |  √   |
|  texstudio-cn  |            [TeXStudio 镜像](https://texstudio.org)            | 开源软件镜像 |  √   |
|     vlc-cn     |           [VLC 镜像](https://www.videolan.org/vlc)            | 开源软件镜像 |  √   |
|  vscodium-cn   |     [VSCodium 镜像](https://github.com/VSCodium/vscodium)     | 开源软件镜像 |  √   |

### 开源软件

|     Cask 名     |                               App 名                               |     类型     | 商业模式 | 原创 |
| :-------------: | :----------------------------------------------------------------: | :----------: | :------: | :--: |
|      barss      |             [baRSS](https://relikd.de/projects/barss)              |   开源软件   |    🆓    |  √   |
|      later      |                   [Later](https://getlater.app)                    |   开源软件   |    🆓    |  √   |
|     peazip      |             [PeaZip](https://github.com/peazip/PeaZip)             |   开源软件   |    🆓    |  √   |
|     ryujinx     |                   [Ryujinx](https://ryujinx.org)                   |   开源软件   |    🆓    |  √   |
|     upscayl     |                 [Upscayl](https://www.upscayl.org)                 |   开源软件   |    🆓    |  √   |
|   corretto-8    |    [Amazon Corretto 8](https://github.com/corretto/corretto-8)     |   开源软件   |    🆓    |  √   |
|   gridplayer    |        [GridPlayer](https://github.com/vzhd1701/gridplayer)        |   开源软件   |    🆓    |  √   |
|   openstudio    |          [OpenStudio](https://github.com/NREL/OpenStudio)          |   开源软件   |    🆓    |  √   |
|  freefilesync   |            [FreeFileSync](https://www.freefilesync.org)            |   开源软件   |    🆓    |  √   |
|  pixel-perfect  | [Pixel Perfect](https://github.com/cormiertyshawn895/PixelPerfect) |   开源软件   |    🆓    |  √   |
| pareto-security |                [Pareto](https://paretosecurity.com)                |   开源软件   |  🆓💰   |  √   |
|    lyricsxjh    | [LyricsX JH Fork](https://github.com/JH-Application-Forks/LyricsX) | 开源软件分支 |    🆓    |  √   |

### 开源软件（国人开发）

|      Cask 名      |                                         App 名                                          |         类型         | 商业模式 | 原创 |
| :---------------: | :-------------------------------------------------------------------------------------: | :------------------: | :------: | :--: |
|   alist-desktop   |            [AList 桌面客户端](https://github.com/alist-org/desktop-release)             | 开源软件（国人开发） |  🆓💰   |  √   |
|   alist-helper    | [Alist-Helper](https://github.com/Xmarmalade/alisthelper/blob/master/README_zh-Hans.md) | 开源软件（国人开发） |    🆓    |  √   |
|      chatgpt      |                       [ChatGPT](https://github.com/lencx/ChatGPT)                       | 开源软件（国人开发） |    🆓    |  √   |
|    clash-verge    |                  [Clash-Verge](https://github.com/zzzgydi/clash-verge)                  | 开源软件（国人开发） |    🆓    |  √   |
|   goldendict-ng   |              [GoldenDict-ng](https://github.com/xiaoyifang/goldendict-ng)               | 开源软件（国人开发） |    🆓    |  √   |
|      gopeed       |                              [Gopeed](https://gopeed.com/)                              | 开源软件（国人开发） |    🆓    |  √   |
| openai-translator |            [OpenAI-Translator](https://github.com/yetone/openai-translator)             | 开源软件（国人开发） |    🆓    |  √   |
|    pot-desktop    |                  [Pot-Desktop](https://github.com/pot-app/pot-desktop)                  | 开源软件（国人开发） |    🆓    |  √   |
|  m3u8-downloader  |             [M3U8Downloader](https://github.com/HeiSir2014/M3U8-Downloader)             | 开源软件（国人开发） |          |  √   |
|     messauto      |                     [MessAuto](https://github.com/LeeeSe/MessAuto)                      | 开源软件（国人开发） |    🆓    |  √   |
|     yank-note     |                        [Yank-Note](https://yank-note.com/zh-CN)                         | 开源软件（国人开发） |    🆓    |  √   |

### 商业软件

|    Cask 名     |                            App 名                            |     类型     | 商业模式 | 原创 |
| :------------: | :----------------------------------------------------------: | :----------: | :------: | :--: |
|     feige      |             [飞鸽传书](http://www.ipmsg.org.cn)              | 国产商业软件 |    🆓    |  √   |
|     hapogo     |                 [HapiGo](https://hapigo.com)                 | 国产商业软件 |  🆓💰   |  √   |
|    e-study     |        [知网研学（原 E-Study）](https://e-study.com)         | 国产商业软件 |  🆓💰   |  √   |
|    eshelper    |     [西语助手](https://www.eudic.net/v4/es/app/eshelper)     | 国产商业软件 |  🆓💰   |  √   |
|    i4tools     |                [爱思助手](https://www.i4.cn)                 | 国产商业软件 |    🆓    |  √   |
|    lingquan    |                [零泉](https://lingquan.cool)                 | 国产商业软件 |  🆓💰   |  √   |
|    linkease    |              [易有云](https://doc.linkease.com)              | 国产商业软件 |    🆓    |  √   |
|    ting-en     | [每日英语听力](http://www.francochinois.com/v4/en/app/ting)  | 国产商业软件 |  🆓💰   |  √   |
|    ting-es     | [每日西语听力](http://www.francochinois.com/v4/es/app/ting)  | 国产商业软件 |  🆓💰   |  √   |
|    ting-fr     | [每日法语听力](http://www.francochinois.com/v4/fr/app/ting)  | 国产商业软件 |  🆓💰   |  √   |
|   easy-to-tv   |   [Easy To TV](https://github.com/duolabmeng6/easy_to_tv)    | 国产开源软件 |    🆓    |  √   |
|   edrawmax-9   |      [亿图图示 9（固定版本）](http://www.edrawsoft.cn)       | 国产商业软件 |   💰    |  √   |
| app-cleaner-cn | [App Cleaner（中文版）](https://nektony.com/mac-app-cleaner) |   商业软件   |   💰    |  √   |
|    zlibrary    |            [Z-Library](https://zlibrary-asia.se)             |   商业软件   |    🆓    |  √   |

### CLI 软件

|    CLI 名    |      名      |   类型   | 原创 |
| :----------: | :----------: | :------: | :--: |
| music-player | Music Player | 开源软件 |  √   |
|   music-dl   |   Music DL   | 开源软件 |  √   |
|    shurl     |    shurl     | 开源软件 |  √   |
| chatgpt-cli  |   ChatGPT    | 开源软件 |  √   |
|    bbdown    |    BBDOWN    | 开源软件 |  √   |
|   ddns-go    |   DDNS-Go    | 开源软件 |  √   |
