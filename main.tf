resource "newrelic_alert_policy" "Test_policy" {
  name = "Test policy"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}

resource "newrelic_infra_alert_condition" "high_disk_usage" {
  policy_id = newrelic_alert_policy.Test_policy.id

  name        = "High disk usage"
  description = "Warning if disk usage goes above 80% and critical alert if goes above 90%"
  type        = "infra_metric"
  event       = "StorageSample"
  select      = "diskUsedPercent"
  comparison  = "above"
  where       = "(hostname LIKE '%frontend%')"

  critical {
    duration      = 10
    value         = 90
    time_function = "all"
  }

  warning {
    duration      = 20
    value         = 80
    time_function = "all"
  }
}