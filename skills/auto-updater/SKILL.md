---
name: auto-updater
description: 每天自动更新 Clawdbot 和所有已安装的 skills。通过 cron 运行，检查更新，应用更新，并向用户发送变更摘要消息。
---

# Auto Updater

## 适用场景

当用户需要自动更新 Clawdbot 和所有已安装的 skills 时，使用该技能。

## 使用步骤

1. 配置 cron 任务。
2. 实现自动更新功能。
3. 发送变更摘要消息。

## 示例

```bash
# 添加 cron 任务
crontab -e
# 添加以下内容，每天凌晨 2 点更新
0 2 * * * cd /root/.openclaw/workspace && npx clawhub update
```
