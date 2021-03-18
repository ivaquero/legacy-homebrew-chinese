<div align="left">
<h1 align="left"> Homebrew-Chinese </h1>
<p>
<a>
<img src="https://img.shields.io/github/languages/code-size/integzz/homebrew-chinese.svg">
</a>
<a>
<img src="https://img.shields.io/github/repo-size/integzz/homebrew-chinese.svg">
</a>

<a>
<img src="https://img.shields.io/github/license/integzz/homebrew-chinese">
</a>
</p>
</div>

<p></p>

<div>
<p> 一个致力于服务国人的 <a href="https://github.com/Homebrew/brew"> Homebrew </a> 🍺 第三方库
</p>
</div>

本仓库主要收录以下软件：

- 国产软件
- 开源软件的国内镜像
- Linux 软件

# 开始 🏃

## 安装 Homebrew 🍺 🚴

在终端中运行以下命令：

```bash
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
brew tap integzz/chinese
```

有关更多信息，请访问 Homebrew 官方网站，网址为 👉 https://brew.sh/ 👈

## 从本仓库安装应用程序 🚅

### 第 1 步：添加此仓库并进行更新，么么哒~ 💋

在终端中运行以下命令：

```bash
brew tap integzz/chinese
brew update
```

### 步骤 2：安装应用程序 ✈️

- 通过 `brew search` 命令检查 App 的确切名称：

```bash
brew search <app_name>
```

``` bash
brew cask install <app_name>
```

- For specific installation

```bash
brew install chinese/<app_name>
```

#### 推荐：添加官方仓库 🚀

```bash
brew tap homebrew/homebrew-cask
brew update
```

#### 用于 Homebrew 命令 📖

```bash
brew help
```

## 总结 ⭐️

|     App 名      | cask 名        | 是否原创?                                                                        |
| :-------------: | -------------- | -------------------------------------------------------------------------------- |
| Copy Translator | copytranslator | √ 已迁移至[Homebrew-Cask](https://github.com/Homebrew/homebrew-cask)             |
| HoststoolforMac | hoststool      | √ 已迁移至 [Homebrew-Cask](https://github.com/Homebrew/homebrew-cask)            |
|     MagnetW     | magnetw        | √                                                                                |
|    西语助手     | eudic-es       | √ 已迁移至 [Homebrew-Cask](https://github.com/Homebrew/homebrew-cask)            |
|    SageMath     | sagemath-cn    | √                                                                                |
|   WPS Office    | wpsoffice-cn   | √                                                                                |
|  每日英语听力   | ting-en        | √                                                                                |
|  每日法语听力   | ting-fr        | √                                                                                |
|  每日西语听力   | ting-es        | √                                                                                |
|      Julia      | julia-linux    | 修改自 [homebrew-linuxbinary](https://github.com/athrunsun/homebrew-linuxbinary) |
