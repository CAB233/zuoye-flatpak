BUILD_PATH := "builddir"
REPO_PATH := "repo"
REPO_BRANCH := "beta"

# 构建应用
@build manifest:
    flatpak-builder \
        --ccache \
        --force-clean \
        --disable-updates \
        --disable-rofiles-fuse \
        --default-branch={{ REPO_BRANCH }} \
        --install-deps-from=flathub \
        --repo={{ REPO_PATH }} \
        {{ BUILD_PATH }} \
        {{ manifest }}

# 构建并安装应用
@build-and-install manifest:
    flatpak-builder \
        --user \
        --ccache \
        --force-clean \
        --disable-updates \
        --disable-rofiles-fuse \
        --default-branch={{ REPO_BRANCH }} \
        --install-deps-from=flathub \
        --repo={{ REPO_PATH }} \
        --install {{ BUILD_PATH }} \
        {{ manifest }}

# 导出软件包
@bundle id:
    flatpak build-bundle {{ REPO_PATH }} "{{ id }}.flatpak" {{ id }} {{ REPO_BRANCH }}

# 更新外部数据版本
@update manifest:
    flatpak run org.flathub.flatpak-external-data-checker {{ manifest }} --update --edit-only
