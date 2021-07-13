/*
Navicat MySQL Data Transfer

Source Server         : xx.xx.xx.xx
Source Server Version : 3306
Source Host           : xx.xx.xx.xx:3306
Source Database       : prometheusalert

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-22 11:16:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `prometheus_alert_d_b`
-- ----------------------------
DROP TABLE IF EXISTS `prometheus_alert_d_b`;
CREATE TABLE `prometheus_alert_d_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpltype` varchar(255) NOT NULL DEFAULT '',
  `tpluse` varchar(255) NOT NULL DEFAULT '',
  `tplname` varchar(255) NOT NULL DEFAULT '',
  `tpl` longtext NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prometheus_alert_d_b_tplname` (`tplname`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prometheus_alert_d_b
-- ----------------------------
INSERT INTO `prometheus_alert_d_b` VALUES ('1', 'dd', 'Prometheus', 'prometheus-dd', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n## [Prometheus恢复信息]({{$v.generatorURL}})\r\n#### [{{$v.labels.alertname}}]({{$var}})\r\n###### 告警级别：{{$v.labels.level}}\r\n###### 开始时间：{{$v.startsAt}}\r\n###### 结束时间：{{$v.endsAt}}\r\n###### 故障主机IP：{{$v.labels.instance}}\r\n##### {{$v.annotations.description}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)\r\n{{else}}\r\n## [Prometheus告警信息]({{$v.generatorURL}})\r\n#### [{{$v.labels.alertname}}]({{$var}})\r\n###### 告警级别：{{$v.labels.level}}\r\n###### 开始时间：{{$v.startsAt}}\r\n###### 结束时间：{{$v.endsAt}}\r\n###### 故障主机IP：{{$v.labels.instance}}\r\n##### {{$v.annotations.description}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:06:55');
INSERT INTO `prometheus_alert_d_b` VALUES ('2', 'wx', 'Prometheus', 'prometheus-wx', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n[Prometheus恢复信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{else}}\r\n[Prometheus告警信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:07:19');
INSERT INTO `prometheus_alert_d_b` VALUES ('3', 'fs', 'Prometheus', 'prometheus-fs', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n**[Prometheus恢复信息]({{$v.generatorURL}})**\r\n*[{{$v.labels.alertname}}]({{$var}})*\r\n告警级别：{{$v.labels.level}}\r\n开始时间：{{$v.startsAt}}\r\n结束时间：{{$v.endsAt}}\r\n故障主机IP：{{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{else}}\r\n**[Prometheus告警信息]({{$v.generatorURL}})**\r\n*[{{$v.labels.alertname}}]({{$var}})*\r\n告警级别：{{$v.labels.level}}\r\n开始时间：{{$v.startsAt}}\r\n结束时间：{{$v.endsAt}}\r\n故障主机IP：{{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:07:39');
INSERT INTO `prometheus_alert_d_b` VALUES ('4', 'txdx', 'Prometheus', 'prometheus-dx', '{{ range $k,$v:=.alerts }}{{if eq $v.status \"resolved\"}}\r\n[Prometheus恢复信息]\r\n{{$v.labels.alertname}}\r\n告警级别：{{$v.labels.level}}\r\n故障主机IP：{{$v.labels.instance}}\r\n{{$v.annotations.description}}\r\n{{else}}\r\nPrometheus告警信息]\r\n{{$v.labels.alertname}}\r\n告警级别：{{$v.labels.level}}\r\n故障主机IP：{{$v.labels.instance}}\r\n{{$v.annotations.description}}\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:08:01');
INSERT INTO `prometheus_alert_d_b` VALUES ('5', 'txdh', 'Prometheus', 'prometheus-dh', '{{ range $k,$v:=.alerts }}{{if eq $v.status \"resolved\"}}恢复信息故障主机IP{{$v.labels.instance}}{{$v.annotations.description}}{{else}}告警信息故障主机IP{{$v.labels.instance}}{{$v.annotations.description}}{{end}}{{ end }}', '2020-12-22 03:08:22');
INSERT INTO `prometheus_alert_d_b` VALUES ('6', 'email', 'Prometheus', 'prometheus-email', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n<h1><a href ={{$v.generatorURL}}>Prometheus恢复信息</a></h1>\r\n<h2><a href ={{$var}}>{{$v.labels.alertname}}</a></h2>\r\n<h5>告警级别：{{$v.labels.level}}</h5>\r\n<h5>开始时间：{{$v.startsAt}}</h5>\r\n<h5>结束时间：{{$v.endsAt}}</h5>\r\n<h5>故障主机IP：{{$v.labels.instance}}</h5>\r\n<h3>{{$v.annotations.description}}</h3>\r\n<img src=https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png />\r\n{{else}}\r\n<h1><a href ={{$v.generatorURL}}>Prometheus告警信息</a></h1>\r\n<h2><a href ={{$var}}>{{$v.labels.alertname}}</a></h2>\r\n<h5>告警级别：{{$v.labels.level}}</h5>\r\n<h5>开始时间：{{$v.startsAt}}</h5>\r\n<h5>结束时间：{{$v.endsAt}}</h5>\r\n<h5>故障主机IP：{{$v.labels.instance}}</h5>\r\n<h3>{{$v.annotations.description}}</h3>\r\n<img src=https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png />\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:08:44');
INSERT INTO `prometheus_alert_d_b` VALUES ('7', 'dd', 'Graylog2', 'graylog2-dd', '## [Graylog2告警信息](http://graylog.org)\r\n#### {{.check_result.result_description}}\r\n{{ range $k,$v:=.check_result.matching_messages }}\r\n###### 告警索引：{{$v.index}}\r\n###### 开始时间：{{GetCSTtime $v.timestamp}}\r\n###### 告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl2_remote_port}}\r\n##### {{$v.message}}\r\n{{end}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)', '2020-12-22 03:09:02');
INSERT INTO `prometheus_alert_d_b` VALUES ('8', 'wx', 'Graylog2', 'graylog2-wx', '[Graylog2告警信息](http://graylog.org)\r\n>**{{.check_result.result_description}}**\r\n{{ range $k,$v:=.check_result.matching_messages }}\r\n>告警索引:{{$v.index}}\r\n开始时间:{{GetCSTtime $v.timestamp}}\r\n告警主机:{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl2_remote_port}}\r\n**{{$v.message}}**\r\n{{end}}', '2020-12-22 03:09:22');
INSERT INTO `prometheus_alert_d_b` VALUES ('9', 'fs', 'Graylog2', 'graylog2-fs', '**[Graylog2告警信息](http://graylog.org)**\r\n*{{.check_result.result_description}}*\r\n{{ range $k,$v:=.check_result.matching_messages }}\r\n告警索引：{{$v.index}}\r\n开始时间：{{GetCSTtime $v.timestamp}}\r\n告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl2_remote_port}}\r\n**{{$v.message}}**\r\n{{end}}', '2020-12-22 03:09:44');
INSERT INTO `prometheus_alert_d_b` VALUES ('10', 'txdx', 'Graylog2', 'graylog2-dx', '{{ range $k,$v:=.check_result.matching_messages }}\r\n告警主机 {{$v.fields.gl2_remote_ip}}端口 {{$v.fields.gl2_remote_port}}告警消息 {{$v.message}}\r\n{{end}}', '2020-12-22 03:10:04');
INSERT INTO `prometheus_alert_d_b` VALUES ('11', 'txdh', 'Graylog2', 'graylog2-dh', '{{ range $k,$v:=.check_result.matching_messages }}\r\n告警主机 {{$v.fields.gl2_remote_ip}}端口 {{$v.fields.gl2_remote_port}}告警消息 {{$v.message}}\r\n{{end}}', '2020-12-22 03:10:26');
INSERT INTO `prometheus_alert_d_b` VALUES ('12', 'email', 'Graylog2', 'graylog2-email', '<h1><a href =http://graylog.org>Graylog2告警信息</a></h1>\r\n<h2>{{.check_result.result_description}}</h2>\r\n{{ range $k,$v:=.check_result.matching_messages }}\r\n<h5>告警索引：{{$v.index}}</h5>\r\n<h5>开始时间：{{GetCSTtime $v.timestamp}}</h5>\r\n<h5>告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl2_remote_port}}</h5>\r\n<h3>{{$v.message}}</h3>\r\n{{end}}\r\n<img src=https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png />', '2020-12-22 03:10:47');
INSERT INTO `prometheus_alert_d_b` VALUES ('13', 'dd', 'Graylog3', 'graylog3-dd', '## [Graylog3告警信息](.check_result.Event.Source)\r\n#### {{.check_result.event_definition_description}}\r\n{{ range $k,$v:=.backlog }}\r\n###### 告警索引：{{$v.index}}\r\n###### 开始时间：{{GetCSTtime $v.timestamp}}\r\n###### 告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl_2_remote_port}}\r\n##### {{$v.message}}\r\n{{end}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)', '2020-12-22 03:11:07');
INSERT INTO `prometheus_alert_d_b` VALUES ('14', 'wx', 'Graylog3', 'graylog3-wx', '[Graylog3告警信息](.check_result.Event.Source)\r\n>**{{.check_result.event_definition_description}}**\r\n{{ range $k,$v:=.backlog }}\r\n>告警索引:{{$v.index}}\r\n开始时间:{{GetCSTtime $v.timestamp}}\r\n告警主机:{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl_2_remote_port}}\r\n**{{$v.message}}**\r\n{{end}}', '2020-12-22 03:11:28');
INSERT INTO `prometheus_alert_d_b` VALUES ('15', 'fs', 'Graylog3', 'graylog3-fs', '**[Graylog3告警信息](.check_result.Event.Source)**\r\n*{{.check_result.event_definition_description}}*\r\n{{ range $k,$v:=.backlog }}\r\n告警索引：{{$v.index}}\r\n开始时间：{{GetCSTtime $v.timestamp}}\r\n告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl_2_remote_port}}\r\n**{{$v.message}}**\r\n{{end}}', '2020-12-22 03:11:49');
INSERT INTO `prometheus_alert_d_b` VALUES ('16', 'txdx', 'Graylog3', 'graylog3-dx', '{{ range $k,$v:=.backlog }}\r\n告警主机 {{$v.fields.gl2_remote_ip}}端口 {{$v.fields.gl_2_remote_port}}告警消息 {{$v.message}}\r\n{{end}}', '2020-12-22 03:12:18');
INSERT INTO `prometheus_alert_d_b` VALUES ('17', 'txdh', 'Graylog3', 'graylog3-dh', '{{ range $k,$v:=.backlog }}\r\n告警主机 {{$v.fields.gl2_remote_ip}}端口 {{$v.fields.gl_2_remote_port}}告警消息 {{$v.message}}\r\n{{end}}', '2020-12-22 03:12:39');
INSERT INTO `prometheus_alert_d_b` VALUES ('18', 'email', 'Graylog3', 'graylog3-email', '<h1><a href =.check_result.Event.Source>Graylog3告警信息</a></h1>\r\n<h2>{{.check_result.event_definition_description}}</h2>\r\n{{ range $k,$v:=.backlog }}\r\n<h5>告警索引：{{$v.index}}</h5>\r\n<h5>开始时间：{{GetCSTtime $v.timestamp}}</h5>\r\n<h5>告警主机：{{$v.fields.gl2_remote_ip}}:{{$v.fields.gl_2_remote_port}}</h5>\r\n<h3>{{$v.message}}</h3>\r\n{{end}}\r\n<img src=https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png />', '2020-12-22 03:13:01');
INSERT INTO `prometheus_alert_d_b` VALUES ('19', 'dd', 'Grafana', 'grafana-dd', '{{if eq .state \"ok\"}}\r\n## [Grafana恢复信息]({{.ruleUrl}})\r\n#### {{.ruleName}}\r\n###### 告警级别：严重\r\n###### 开始时间：{{GetCSTtime \"\"}}\r\n##### {{.message}}\r\n{{else}}\r\n## [Grafana告警信息]({{.ruleUrl}})\r\n#### {{.ruleName}}\r\n###### 告警级别：严重\r\n###### 开始时间：{{GetCSTtime \"\"}}\r\n##### {{.message}}\r\n{{end}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)', '2020-12-22 03:13:28');
INSERT INTO `prometheus_alert_d_b` VALUES ('20', 'wx', 'Grafana', 'grafana-wx', '{{if eq .state \"ok\"}}\r\n[Grafana恢复信息]({{.ruleUrl}})\r\n>**{{.ruleName}}**\r\n>告警级别:严重\r\n开始时间:{{GetCSTtime \"\"}}\r\n{{.message}}\r\n{{else}}\r\n[Grafana告警信息]({{.ruleUrl}})\r\n>**{{.ruleName}}**\r\n>告警级别:严重\r\n开始时间:{{GetCSTtime \"\"}}\r\n{{.message}}\r\n{{end}}', '2020-12-22 03:13:50');
INSERT INTO `prometheus_alert_d_b` VALUES ('21', 'fs', 'Grafana', 'grafana-fs', '{{if eq .state \"ok\"}}\r\n**[Grafana恢复信息]({{.ruleUrl}})**\r\n*{{.ruleName}}*\r\n告警级别：严重\r\n开始时间：{{GetCSTtime \"\"}}\r\n**{{.message}}**\r\n{{else}}\r\n**[Grafana告警信息]({{.ruleUrl}})**\r\n*{{.ruleName}}*\r\n告警级别：严重\r\n开始时间：{{GetCSTtime \"\"}}\r\n**{{.message}}**\r\n{{end}}', '2020-12-22 03:14:13');
INSERT INTO `prometheus_alert_d_b` VALUES ('22', 'txdx', 'Grafana', 'grafana-dx', '{{if eq .state \"ok\"}}\r\nGrafana恢复信息{{.message}}\r\n{{else}}\r\nGrafana告警信息{{.message}}\r\n{{end}}', '2020-12-22 03:14:33');
INSERT INTO `prometheus_alert_d_b` VALUES ('23', 'txdh', 'Grafana', 'grafana-dh', '{{if eq .state \"ok\"}}\r\nGrafana恢复信息{{.message}}\r\n{{else}}\r\nGrafana告警信息{{.message}}\r\n{{end}}', '2020-12-22 03:14:54');
INSERT INTO `prometheus_alert_d_b` VALUES ('24', 'email', 'Grafana', 'grafana-email', '{{if eq .state \"ok\"}}\r\n<h1><a href ={{.ruleUrl}}>Grafana恢复信息</a></h1>\r\n<h2>{{.ruleName}}</h2>\r\n<h5>告警级别：严重</h5>\r\n<h5>开始时间：{{GetCSTtime \"\"}}</h5>\r\n<h3>{{.message}}</h3>\r\n{{else}}\r\n<h1><a href ={{.ruleUrl}}>Grafana恢复信息</a></h1>\r\n<h2>{{.ruleName}}</h2>\r\n<h5>告警级别：严重</h5>\r\n<h5>开始时间：{{GetCSTtime \"\"}}</h5>\r\n<h3>{{.message}}</h3>\r\n{{end}}\r\n<img src=https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png />', '2020-12-22 03:15:15');
INSERT INTO `prometheus_alert_d_b` VALUES ('25', 'dd', 'SonarQube', 'sonar-dd-example', '## [Sonar告警信息]({{.serverUrl}})\r\n###### 检测状态：{{.status}}\r\n###### 检测时间：{{.analysedAt}}\r\n###### ---------------------------------\r\n{{ range $k,$v:=.qualityGate.conditions}}\r\n###### metric：{{$v.metric}}\r\n###### errorThreshold：{{$v.errorThreshold}}\r\n###### operator：{{$v.operator}}\r\n###### status：{{$v.status}}\r\n###### -----------------------------------\r\n{{ end }}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)', '2020-12-22 03:15:34');
INSERT INTO `prometheus_alert_d_b` VALUES ('26', 'dd', 'Jenkins', 'jenkins-dd-example', '## [Jenkins构建信息]({{.buildUrl}})\r\n###### Jenkins地址：[{{.buildUrl}}]({{.buildUrl}})\r\n###### 构建项目：{{.projectName}}\r\n###### 构建事件：{{.event}}\r\n###### 构建名称：{{.buildName}}\r\n###### 构建时间：{{GetCSTtime \"\"}}\r\n![Prometheus](https://raw.githubusercontent.com/feiyu563/PrometheusAlert/master/doc/alert-center.png)', '2020-12-22 03:15:54');
INSERT INTO `prometheus_alert_d_b` VALUES ('27', 'fs', 'Prometheus', 'prometheus-fsv2', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n**[Prometheus恢复信息]({{$v.generatorURL}})**\r\n*[{{$v.labels.alertname}}]({{$var}})*\r\n告警级别：{{$v.labels.level}}\r\n开始时间：{{$v.startsAt}}\r\n结束时间：{{$v.endsAt}}\r\n故障主机IP：{{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{else}}\r\n**[Prometheus告警信息]({{$v.generatorURL}})**\r\n*[{{$v.labels.alertname}}]({{$var}})*\r\n告警级别：{{$v.labels.level}}\r\n开始时间：{{$v.startsAt}}\r\n结束时间：{{$v.endsAt}}\r\n故障主机IP：{{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:16:15');
INSERT INTO `prometheus_alert_d_b` VALUES ('28', 'workwechat', 'Prometheus', 'prometheus-wechatapp', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n[Prometheus恢复信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{else}}\r\n[Prometheus告警信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:07:19');
INSERT INTO `prometheus_alert_d_b` VALUES ('29', 'rl', 'Prometheus', 'prometheus-ruliu', '{{ $var := .externalURL}}{{ range $k,$v:=.alerts }}\r\n{{if eq $v.status \"resolved\"}}\r\n[Prometheus恢复信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{else}}\r\n[Prometheus告警信息]($v.generatorURL}})\r\n>**[{{$v.labels.alertname}}]({{$var}})**\r\n>告警级别: {{$v.labels.level}}\r\n开始时间: {{$v.startsAt}}\r\n结束时间: {{$v.endsAt}}\r\n故障主机IP: {{$v.labels.instance}}\r\n**{{$v.annotations.description}}**\r\n{{end}}\r\n{{ end }}', '2020-12-22 03:07:19');


CREATE TABLE `alert_record` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `send_type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `alertname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `alert_level` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `business_type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `instance` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `starts_at` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `ends_at` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `summary` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `description` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `handle_status` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `alert_status` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `alert_json` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `remark` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `revision` int NOT NULL DEFAULT '0',
                                `created_by` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `created_time` datetime NOT NULL,
                                `updated_by` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
                                `updated_time` datetime NOT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

