
<p align="center">
  <img src=".github/doc/logo.avif" width="191" height="256">
  <h1 align="center">Zuoye's Flatpak Repo</h1>
</p>

## 使用方法

### 添加仓库

```bash
flatpak remote-add \
  --user \
  --if-not-exists \
  --signature-lookaside=https://repo.zuoye.win/flatpak/sigs \
  zuoye-flatpak \
  https://repo.zuoye.win/flatpak/zuoye-flatpak.flatpakrepo
```

### 移除仓库

```bash
flatpak remote-delete --user zuoye-flatpak
```
