# What is it?

Burası geliştirme yaparken kullandığım programların ayarlarının tutulduğu bir repo.

Geliştirme yaparken kullandığım işletim sistemi `Windows 10 Pro`, kendisini `WSL` ile birlikte kullanıyorum, zira buradaki çoğu ayar WSL için yazıldı.

## Install

**NOTE:** Script hazır değil.

```bash
$ ./install.sh
```

## Dotfiles

```bash
# wsl ortamımdaki bash ayarlarımı içeriyor
.bashrc

# `bash git prompt` ile ilgili ayar ve diğer kodları burada tutuyorum
# https://github.com/magicmonty/bash-git-prompt
.bash_git_prompt

# tüm shell aliaslarımı burada tutuyorum
.aliases

# tüm shell fonksiyonlarımı burada tutuyorum
.functions

# login olup girildiğinde otomatik çalıştırılacak bash dosyası
.profile

# wsl ortamında `oh-my-zsh` için kullanıyorum
# z shell için gerekli bir ayar dosyası
# içinde `oh-my-zsh` ayarları ve eklentileri yer alıyor
.zshrc

# wsl ortamında `thunar` adında GUI tabanlı bir program kullanıyorum
# bu dosya `thunar` programında ortaya çıkan ikon hatasını çözüyor
.gtkrc-2.0

# global git ayar dosyam
.gitconfig

# git commit template dosyam
.git-commit-template

# pypi ve testpypi sistemini daha kolay kullanmak için bir dosya
# dosyayı kullanmadan önce dosya içine şifremi doğru şekilde değiştirmem gerekiyor
.pypirc

# vim ayarlarım
.vimrc

# tmux ayarlarım
.tmux

# `oh-my-zsh` ayarlarım
.oh-my-zsh

# fontların bulunduğu klasör
.fonts

# arkaplan resmi olarak kullandığım resimlerin bulunduğu klasör
.pix
```

## Binaries

Bazı ufak programlar .bin klasöründe tutuluyor, Bu klasör hem Windows hem Linux `PATH`'inde tanımlanıyor.

**NOTE:** `.cmd` uzantılı dosyalar `Windows` için.

Bazı scriptler sadece Linux için yazılmış olabiliyor, Örneğin `diff-so-fancy` `perl` ile yazılmış. Bu binary'i kullanmak için `.cmd` dosyası açıp `perl` programı ile dosyayı execute ettiriyoruz. Böylelikle program windows ile uyumlu çalışıyor.

## Windows

Bu klasörün altında windows içinde kullanığım bazı programların ayar-kısayol ve betik dosyaları bulunuyor.
