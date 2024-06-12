Invariant: rule-1
Description: "Observation.value[x]:valueQuantity.value must contain at most one decimal"
* severity = #error
* expression = "$this.matches('^(0|[1-9]\\\\d*)(.\\\\d?)?$')"

Invariant: rule-2
Description: "Observation.value[x]: valueInteger must be between 1 and 5"
* severity = #error
* expression = "$this.toString().matches('^[1-5]$')"