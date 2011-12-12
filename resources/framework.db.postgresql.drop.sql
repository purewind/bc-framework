-- ##BC平台的MYSQL删表脚本##

-- 用于生成hibernate id的序列
DROP SEQUENCE IF EXISTS CORE_SEQUENCE;
DROP SEQUENCE IF EXISTS hibernate_sequence;

-- 测试用的表
DROP TABLE IF EXISTS BC_EXAMPLE;
DROP SEQUENCE IF EXISTS BC_EXAMPLE_ID_SEQ;

-- 同步记录基表
DROP TABLE IF EXISTS BC_SYNC_BASE;
DROP SEQUENCE IF EXISTS BC_SYNC_BASE_ID_SEQ;

-- 用户反馈
DROP TABLE IF EXISTS BC_FEEDBACK;
DROP SEQUENCE IF EXISTS BC_FEEDBACK_ID_SEQ;

-- 电子公告
DROP TABLE IF EXISTS BC_BULLETIN;
DROP SEQUENCE IF EXISTS BC_BULLETIN_ID_SEQ;

-- 文档附件
DROP TABLE IF EXISTS BC_DOCS_ATTACH_HISTORY;
DROP TABLE IF EXISTS BC_DOCS_ATTACH;
DROP SEQUENCE IF EXISTS BC_DOCS_ATTACH_HISTORY_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_DOCS_ATTACH_ID_SEQ;

-- 系统日志
DROP TABLE IF EXISTS BC_LOG_SYSTEM;
DROP SEQUENCE IF EXISTS BC_LOG_SYSTEM_ID_SEQ;
-- 工作日志
DROP TABLE IF EXISTS BC_LOG_WORK;
DROP SEQUENCE IF EXISTS BC_LOG_WORK_ID_SEQ;

-- 工作事务
DROP TABLE IF EXISTS BC_WORK_TODO;
DROP TABLE IF EXISTS BC_WORK_DONE;
DROP TABLE IF EXISTS BC_WORK;
DROP SEQUENCE IF EXISTS BC_WORK_TODO_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_WORK_DONE_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_WORK_ID_SEQ;

-- 消息管理
DROP TABLE IF EXISTS BC_MESSAGE;
DROP SEQUENCE IF EXISTS BC_MESSAGE_ID_SEQ;

-- 个性化设置
DROP TABLE IF EXISTS BC_DESKTOP_SHORTCUT;
DROP TABLE IF EXISTS BC_DESKTOP_PERSONAL;
DROP SEQUENCE IF EXISTS BC_DESKTOP_SHORTCUT_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_DESKTOP_PERSONAL_ID_SEQ;

-- 系统标识
DROP TABLE IF EXISTS BC_IDENTITY_ROLE_ACTOR;
DROP TABLE IF EXISTS BC_IDENTITY_AUTH;
DROP TABLE IF EXISTS BC_IDENTITY_ACTOR_RELATION;
DROP TABLE IF EXISTS BC_IDENTITY_ACTOR_HISTORY;
DROP TABLE IF EXISTS BC_IDENTITY_ACTOR;
DROP TABLE IF EXISTS BC_IDENTITY_ACTOR_DETAIL;
DROP TABLE IF EXISTS BC_IDENTITY_DUTY;
DROP TABLE IF EXISTS BC_IDENTITY_IDGENERATOR;
DROP TABLE IF EXISTS BC_IDENTITY_ROLE_RESOURCE;
DROP TABLE IF EXISTS BC_IDENTITY_ROLE;
DROP TABLE IF EXISTS BC_IDENTITY_RESOURCE;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ROLE_ACTOR_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_AUTH_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ACTOR_RELATION_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ACTOR_HISTORY_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ACTOR_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ACTOR_DETAIL_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_DUTY_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_IDGENERATOR_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ROLE_RESOURCE_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_ROLE_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_IDENTITY_RESOURCE_ID_SEQ;

-- 选项模块
DROP TABLE IF EXISTS BC_OPTION_ITEM;
DROP TABLE IF EXISTS BC_OPTION_GROUP;
DROP SEQUENCE IF EXISTS BC_OPTION_ITEM_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_OPTION_GROUP_ID_SEQ;

-- 任务调度
DROP TABLE IF EXISTS BC_SD_LOG;
DROP TABLE IF EXISTS BC_SD_JOB;
DROP SEQUENCE IF EXISTS BC_SD_LOG_ID_SEQ;
DROP SEQUENCE IF EXISTS BC_SD_JOB_ID_SEQ;
