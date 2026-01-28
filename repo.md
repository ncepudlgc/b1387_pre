# Ansible Role: manage_openjdk

## Repo简介

这是一个 Ansible 项目，用于管理 OpenJDK 的安装和配置。项目使用 Ansible playbook 和 role 结构来组织任务。

**主要功能：**
- 安装/卸载 OpenJDK 包
- 生成 Java 环境配置脚本
- 管理 Java 版本配置

**技术栈：**
- Ansible 2.15.x
- YAML
- Jinja2 模板
- Python 3.x

**项目结构：**
- `roles/manage_openjdk/` - OpenJDK 管理 role
  - `tasks/main.yml` - 主要任务文件
  - `handlers/main.yml` - Handler 定义
  - `vars/main.yml` - 变量定义
  - `defaults/main.yml` - 默认变量
  - `templates/` - Jinja2 模板文件
- `tasks/` - 其他任务文件
- `group_vars/` - 组变量定义

**Role 组织：**
- 使用标准的 Ansible role 结构
- 通过变量和任务分离实现模块化
- 使用 handlers 处理配置应用和验证

## 题目Prompt

In my ansible role manage_openjdk I want to create a new file under tasks. It will output details of the package installed. It then calls a new handler that restarts the tomcat service that relies on openjdk, then prints out the time that tomcat was restarted. Do this while maintaining the organization I have with variables and tasks.

## PR链接

https://github.com/ncepudlgc/b1387_pre/pull/1
