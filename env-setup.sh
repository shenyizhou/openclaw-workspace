#!/bin/bash
# 环境配置脚本 - 快速加载 nvm, pnpm 和镜像源

echo "🔧 加载开发环境配置..."

# 加载 nvm
echo "🔄 加载 nvm..."
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh"
fi
if [ -s "$NVM_DIR/bash_completion" ]; then
    . "$NVM_DIR/bash_completion"
fi

# 配置 nvm Node.js 镜像源
export NVM_NODEJS_ORG_MIRROR=https://npmmirror.com/mirrors/node/

# 确保使用 Node.js LTS 版本
if command -v nvm &> /dev/null; then
    nvm use --lts > /dev/null 2>&1
fi

# 配置 npm 镜像源
echo "📦 配置 npm 镜像源..."
npm config set registry https://registry.npmmirror.com

# 添加 pnpm 到 PATH
export PATH="$PATH:/root/.local/share/pnpm"

# 配置 pnpm 镜像源（如果 pnpm 已安装）
if command -v pnpm &> /dev/null; then
    echo "📦 配置 pnpm 镜像源..."
    pnpm config set registry https://registry.npmmirror.com
fi

echo ""
echo "✅ 环境配置完成！"
echo "   - Git 用户: $(git config --global user.name)"
echo "   - Git 邮箱: $(git config --global user.email)"
echo "   - Node.js 版本: $(node --version)"
echo "   - npm 版本: $(npm --version)"
echo "   - npm 镜像源: $(npm config get registry)"
echo "   - nvm 镜像源: $NVM_NODEJS_ORG_MIRROR"
echo "   - nvm 版本: $(nvm --version 2>/dev/null || echo 'nvm not loaded')"
if command -v pnpm &> /dev/null; then
    echo "   - pnpm 版本: $(pnpm --version)"
    echo "   - pnpm 镜像源: $(pnpm config get registry)"
fi
if command -v claude &> /dev/null; then
    echo "   - Claude Code 版本: $(claude --version)"
fi
if command -v gh &> /dev/null; then
    echo "   - GitHub CLI 版本: $(gh --version)"
fi
