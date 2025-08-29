{{- define "otc.providerName" -}}
{{- if and .Values.otc.provider .Values.otc.provider.name }}
{{- .Values.otc.provider.name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "provider-%s" "opentelekomcloud" }}
{{- end }}
{{- end }}

{{- define "otc.providerconfigName" -}}
{{- if and .Values.otc.providerConfig .Values.otc.providerConfig.name }}
{{- .Values.otc.providerConfig.name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "providerconfig-%s" "opentelekomcloud" }}
{{- end }}
{{- end }}