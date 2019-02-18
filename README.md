# 分布式任务调度 crontab

## 项目依赖
- "github.com/coreos/etcd"
- "github.com/gorhill/cronexpr"
- "github.com/mongodb/mongo-go-driver"

## 项目简介
master为主节点
通过web服务提供：创建、编辑、删除、强杀任务，查看健康worker节点，查看任务执行日志等功能
任务被保存到etcd中，通过etcd的watch机制“分发”给worker节点，worker节点处理任务，并保存执行日志到MongoDB中。

worker为执行任务的节点
实现了任务的调度和执行，并保存日志。
通过etcd实现了分布式锁