resource "oci_dataintegration_workspace_application_task_schedule" "dataintegration_workspace_application_task_schedules" {
  for_each = var.dataintegration_workspace_application_task_schedules

  application_key          = each.value.application_key
  identifier               = each.value.identifier
  name                     = each.value.name
  workspace_id             = each.value.workspace_id
  auth_mode                = each.value.auth_mode
  config_provider_delegate = each.value.config_provider_delegate
  description              = each.value.description
  end_time_millis          = each.value.end_time_millis
  expected_duration        = each.value.expected_duration
  expected_duration_unit   = each.value.expected_duration_unit
  is_backfill_enabled      = each.value.is_backfill_enabled
  is_concurrent_allowed    = each.value.is_concurrent_allowed
  is_enabled               = each.value.is_enabled
  key                      = each.value.key
  model_version            = each.value.model_version
  next_run_time_millis     = each.value.next_run_time_millis
  number_of_retries        = each.value.number_of_retries
  object_status            = each.value.object_status
  object_version           = each.value.object_version
  retry_delay              = each.value.retry_delay
  retry_delay_unit         = each.value.retry_delay_unit
  start_time_millis        = each.value.start_time_millis

  dynamic "parent_ref" {
    for_each = each.value.parent_ref != null ? [each.value.parent_ref] : []
    content {
      parent      = parent_ref.value.parent
      root_doc_id = parent_ref.value.root_doc_id
    }
  }

  dynamic "registry_metadata" {
    for_each = each.value.registry_metadata != null ? [each.value.registry_metadata] : []
    content {
      aggregator_key   = registry_metadata.value.aggregator_key
      is_favorite      = registry_metadata.value.is_favorite
      key              = registry_metadata.value.key
      labels           = registry_metadata.value.labels
      registry_version = registry_metadata.value.registry_version
    }
  }

  dynamic "schedule_ref" {
    for_each = each.value.schedule_ref != null ? [each.value.schedule_ref] : []
    content {
      description = schedule_ref.value.description
      dynamic "frequency_details" {
        for_each = schedule_ref.value.frequency_details != null ? [schedule_ref.value.frequency_details] : []
        content {
          custom_expression = frequency_details.value.custom_expression
          day_of_week       = frequency_details.value.day_of_week
          days              = frequency_details.value.days
          frequency         = frequency_details.value.frequency
          interval          = frequency_details.value.interval
          model_type        = frequency_details.value.model_type
          dynamic "time" {
            for_each = frequency_details.value.time != null ? [frequency_details.value.time] : []
            content {
              hour   = time.value.hour
              minute = time.value.minute
              second = time.value.second
            }
          }
          week_of_month = frequency_details.value.week_of_month
        }
      }
      identifier                     = schedule_ref.value.identifier
      is_daylight_adjustment_enabled = schedule_ref.value.is_daylight_adjustment_enabled
      key                            = schedule_ref.value.key
      dynamic "metadata" {
        for_each = schedule_ref.value.metadata != null ? [schedule_ref.value.metadata] : []
        content {
          dynamic "aggregator" {
            for_each = metadata.value.aggregator != null ? [metadata.value.aggregator] : []
            content {
              description = aggregator.value.description
              identifier  = aggregator.value.identifier
              key         = aggregator.value.key
              name        = aggregator.value.name
              type        = aggregator.value.type
            }
          }
          aggregator_key = metadata.value.aggregator_key
          dynamic "count_statistics" {
            for_each = metadata.value.count_statistics != null ? [metadata.value.count_statistics] : []
            content {
              dynamic "object_type_count_list" {
                for_each = count_statistics.value.object_type_count_list
                content {
                  object_count = object_type_count_list.value.object_count
                  object_type  = object_type_count_list.value.object_type
                }
              }
            }
          }
          created_by       = metadata.value.created_by
          created_by_name  = metadata.value.created_by_name
          identifier_path  = metadata.value.identifier_path
          info_fields      = metadata.value.info_fields
          is_favorite      = metadata.value.is_favorite
          labels           = metadata.value.labels
          registry_version = metadata.value.registry_version
          time_created     = metadata.value.time_created
          time_updated     = metadata.value.time_updated
          updated_by       = metadata.value.updated_by
          updated_by_name  = metadata.value.updated_by_name
        }
      }
      model_type     = schedule_ref.value.model_type
      model_version  = schedule_ref.value.model_version
      name           = schedule_ref.value.name
      object_status  = schedule_ref.value.object_status
      object_version = schedule_ref.value.object_version
      dynamic "parent_ref" {
        for_each = schedule_ref.value.parent_ref != null ? [schedule_ref.value.parent_ref] : []
        content {
          parent      = parent_ref.value.parent
          root_doc_id = parent_ref.value.root_doc_id
        }
      }
      timezone = schedule_ref.value.timezone
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

