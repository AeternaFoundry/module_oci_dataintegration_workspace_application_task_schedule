variable "dataintegration_workspace_application_task_schedules" {
  description = <<EOT
Map of dataintegration_workspace_application_task_schedules, attributes below
Required:
    - application_key
    - identifier
    - name
    - workspace_id
Optional:
    - auth_mode
    - config_provider_delegate
    - description
    - end_time_millis
    - expected_duration
    - expected_duration_unit
    - is_backfill_enabled
    - is_concurrent_allowed
    - is_enabled
    - key
    - model_version
    - next_run_time_millis
    - number_of_retries
    - object_status
    - object_version
    - retry_delay
    - retry_delay_unit
    - start_time_millis
    - parent_ref (block):
        - parent (optional)
        - root_doc_id (optional)
    - registry_metadata (block):
        - aggregator_key (optional)
        - is_favorite (optional)
        - key (optional)
        - labels (optional)
        - registry_version (optional)
    - schedule_ref (block):
        - description (optional)
        - frequency_details (optional, block):
            - custom_expression (optional)
            - day_of_week (optional)
            - days (optional)
            - frequency (optional)
            - interval (optional)
            - model_type (required)
            - time (optional, block):
                - hour (optional)
                - minute (optional)
                - second (optional)
            - week_of_month (optional)
        - identifier (optional)
        - is_daylight_adjustment_enabled (optional)
        - key (optional)
        - metadata (optional, block):
            - aggregator (optional, block):
                - description (optional)
                - identifier (optional)
                - key (optional)
                - name (optional)
                - type (optional)
            - aggregator_key (optional)
            - count_statistics (optional, block):
                - object_type_count_list (required, block):
                    - object_count (optional)
                    - object_type (optional)
            - created_by (optional)
            - created_by_name (optional)
            - identifier_path (optional)
            - info_fields (optional)
            - is_favorite (optional)
            - labels (optional)
            - registry_version (optional)
            - time_created (optional)
            - time_updated (optional)
            - updated_by (optional)
            - updated_by_name (optional)
        - model_type (optional)
        - model_version (optional)
        - name (optional)
        - object_status (optional)
        - object_version (optional)
        - parent_ref (optional, block):
            - parent (optional)
            - root_doc_id (optional)
        - timezone (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    application_key          = string
    identifier               = string
    name                     = string
    workspace_id             = string
    auth_mode                = optional(string)
    config_provider_delegate = optional(string)
    description              = optional(string)
    end_time_millis          = optional(string)
    expected_duration        = optional(number)
    expected_duration_unit   = optional(string)
    is_backfill_enabled      = optional(bool)
    is_concurrent_allowed    = optional(bool)
    is_enabled               = optional(bool)
    key                      = optional(string)
    model_version            = optional(string)
    next_run_time_millis     = optional(string)
    number_of_retries        = optional(number)
    object_status            = optional(number)
    object_version           = optional(number)
    retry_delay              = optional(number)
    retry_delay_unit         = optional(string)
    start_time_millis        = optional(string)
    parent_ref = optional(object({
      parent      = optional(string)
      root_doc_id = optional(string)
    }))
    registry_metadata = optional(object({
      aggregator_key   = optional(string)
      is_favorite      = optional(bool)
      key              = optional(string)
      labels           = optional(list(string))
      registry_version = optional(number)
    }))
    schedule_ref = optional(object({
      description = optional(string)
      frequency_details = optional(object({
        custom_expression = optional(string)
        day_of_week       = optional(string)
        days              = optional(list(number))
        frequency         = optional(string)
        interval          = optional(number)
        model_type        = string
        time = optional(object({
          hour   = optional(number)
          minute = optional(number)
          second = optional(number)
        }))
        week_of_month = optional(string)
      }))
      identifier                     = optional(string)
      is_daylight_adjustment_enabled = optional(bool)
      key                            = optional(string)
      metadata = optional(object({
        aggregator = optional(object({
          description = optional(string)
          identifier  = optional(string)
          key         = optional(string)
          name        = optional(string)
          type        = optional(string)
        }))
        aggregator_key = optional(string)
        count_statistics = optional(object({
          object_type_count_list = list(object({
            object_count = optional(string)
            object_type  = optional(string)
          }))
        }))
        created_by       = optional(string)
        created_by_name  = optional(string)
        identifier_path  = optional(string)
        info_fields      = optional(map(string))
        is_favorite      = optional(bool)
        labels           = optional(list(string))
        registry_version = optional(number)
        time_created     = optional(string)
        time_updated     = optional(string)
        updated_by       = optional(string)
        updated_by_name  = optional(string)
      }))
      model_type     = optional(string)
      model_version  = optional(string)
      name           = optional(string)
      object_status  = optional(number)
      object_version = optional(number)
      parent_ref = optional(object({
        parent      = optional(string)
        root_doc_id = optional(string)
      }))
      timezone = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_application_task_schedules : (
        v.schedule_ref == null || (v.schedule_ref.metadata == null || (v.schedule_ref.metadata.count_statistics == null || (length(v.schedule_ref.metadata.count_statistics.object_type_count_list) >= 1)))
      )
    ])
    error_message = "Each object_type_count_list list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dataintegration_workspace_application_task_schedules : (
        v.schedule_ref == null || (v.schedule_ref.frequency_details == null || (contains([for v in ["CUSTOM", "DAILY", "HOURLY", "MONTHLY", "MONTHLY_RULE", "WEEKLY"] : lower(v)], lower(v.schedule_ref.frequency_details.model_type))))
      )
    ])
    error_message = "must be one of: \"CUSTOM\", \"DAILY\", \"HOURLY\", \"MONTHLY\", \"MONTHLY_RULE\", \"WEEKLY\""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

