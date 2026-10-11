output "dataintegration_workspace_application_task_schedules_id" {
  description = "Map of id values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no id are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataintegration_workspace_application_task_schedules_application_key" {
  description = "Map of application_key values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no application_key are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.application_key if v.application_key != null && length(v.application_key) > 0 }
}
output "dataintegration_workspace_application_task_schedules_auth_mode" {
  description = "Map of auth_mode values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no auth_mode are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.auth_mode if v.auth_mode != null && length(v.auth_mode) > 0 }
}
output "dataintegration_workspace_application_task_schedules_config_provider_delegate" {
  description = "Map of config_provider_delegate values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no config_provider_delegate are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.config_provider_delegate if v.config_provider_delegate != null && length(v.config_provider_delegate) > 0 }
}
output "dataintegration_workspace_application_task_schedules_description" {
  description = "Map of description values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no description are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dataintegration_workspace_application_task_schedules_end_time_millis" {
  description = "Map of end_time_millis values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no end_time_millis are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.end_time_millis if v.end_time_millis != null && length(v.end_time_millis) > 0 }
}
output "dataintegration_workspace_application_task_schedules_expected_duration" {
  description = "Map of expected_duration values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no expected_duration are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.expected_duration if v.expected_duration != null }
}
output "dataintegration_workspace_application_task_schedules_expected_duration_unit" {
  description = "Map of expected_duration_unit values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no expected_duration_unit are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.expected_duration_unit if v.expected_duration_unit != null && length(v.expected_duration_unit) > 0 }
}
output "dataintegration_workspace_application_task_schedules_identifier" {
  description = "Map of identifier values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no identifier are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "dataintegration_workspace_application_task_schedules_is_backfill_enabled" {
  description = "Map of is_backfill_enabled values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no is_backfill_enabled are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.is_backfill_enabled if v.is_backfill_enabled != null }
}
output "dataintegration_workspace_application_task_schedules_is_concurrent_allowed" {
  description = "Map of is_concurrent_allowed values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no is_concurrent_allowed are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.is_concurrent_allowed if v.is_concurrent_allowed != null }
}
output "dataintegration_workspace_application_task_schedules_is_enabled" {
  description = "Map of is_enabled values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no is_enabled are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.is_enabled if v.is_enabled != null }
}
output "dataintegration_workspace_application_task_schedules_key" {
  description = "Map of key values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no key are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.key if v.key != null && length(v.key) > 0 }
}
output "dataintegration_workspace_application_task_schedules_last_run_details" {
  description = "Map of last_run_details values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no last_run_details are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.last_run_details if v.last_run_details != null && length(v.last_run_details) > 0 }
}
output "dataintegration_workspace_application_task_schedules_metadata" {
  description = "Map of metadata values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no metadata are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "dataintegration_workspace_application_task_schedules_model_type" {
  description = "Map of model_type values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no model_type are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.model_type if v.model_type != null && length(v.model_type) > 0 }
}
output "dataintegration_workspace_application_task_schedules_model_version" {
  description = "Map of model_version values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no model_version are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.model_version if v.model_version != null && length(v.model_version) > 0 }
}
output "dataintegration_workspace_application_task_schedules_name" {
  description = "Map of name values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no name are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataintegration_workspace_application_task_schedules_next_run_time_millis" {
  description = "Map of next_run_time_millis values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no next_run_time_millis are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.next_run_time_millis if v.next_run_time_millis != null && length(v.next_run_time_millis) > 0 }
}
output "dataintegration_workspace_application_task_schedules_number_of_retries" {
  description = "Map of number_of_retries values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no number_of_retries are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.number_of_retries if v.number_of_retries != null }
}
output "dataintegration_workspace_application_task_schedules_object_status" {
  description = "Map of object_status values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no object_status are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.object_status if v.object_status != null }
}
output "dataintegration_workspace_application_task_schedules_object_version" {
  description = "Map of object_version values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no object_version are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.object_version if v.object_version != null }
}
output "dataintegration_workspace_application_task_schedules_parent_ref" {
  description = "Map of parent_ref values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no parent_ref are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => one(v.parent_ref) if v.parent_ref != null && length(v.parent_ref) > 0 }
}
output "dataintegration_workspace_application_task_schedules_registry_metadata" {
  description = "Map of registry_metadata values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no registry_metadata are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => one(v.registry_metadata) if v.registry_metadata != null && length(v.registry_metadata) > 0 }
}
output "dataintegration_workspace_application_task_schedules_retry_attempts" {
  description = "Map of retry_attempts values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no retry_attempts are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.retry_attempts if v.retry_attempts != null }
}
output "dataintegration_workspace_application_task_schedules_retry_delay" {
  description = "Map of retry_delay values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no retry_delay are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.retry_delay if v.retry_delay != null }
}
output "dataintegration_workspace_application_task_schedules_retry_delay_unit" {
  description = "Map of retry_delay_unit values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no retry_delay_unit are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.retry_delay_unit if v.retry_delay_unit != null && length(v.retry_delay_unit) > 0 }
}
output "dataintegration_workspace_application_task_schedules_schedule_ref" {
  description = "Map of schedule_ref values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no schedule_ref are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => one(v.schedule_ref) if v.schedule_ref != null && length(v.schedule_ref) > 0 }
}
output "dataintegration_workspace_application_task_schedules_start_time_millis" {
  description = "Map of start_time_millis values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no start_time_millis are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.start_time_millis if v.start_time_millis != null && length(v.start_time_millis) > 0 }
}
output "dataintegration_workspace_application_task_schedules_workspace_id" {
  description = "Map of workspace_id values across all dataintegration_workspace_application_task_schedules, keyed the same as var.dataintegration_workspace_application_task_schedules except keys with no workspace_id are omitted"
  value       = { for k, v in oci_dataintegration_workspace_application_task_schedule.dataintegration_workspace_application_task_schedules : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

