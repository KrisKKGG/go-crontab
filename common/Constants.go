package common

const (
	// 任务保存目录
	JOB_SAVE_DIR = "/cron/jobs/"

	// 任务强杀目录
	JOB_KILLER_DIR = "/cron/killer/"

	// 任务锁目录
	JOB_LOCK_DIR = "/cron/lock/"

	// 服务注册目录
	JOB_WORKER_DIR = "/cron/workers/"
)

const (
	// 保存任务事件
	JOB_EVENT_SAVE = iota + 1

	// 删除任务事件
	JOB_EVENT_DELETE

	// 强杀任务事件
	JOB_EVENT_KILL
)