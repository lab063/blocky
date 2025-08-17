{{/*
Common labels
*/}}
{{- define "blocky.labels" -}}
helm.sh/chart: {{ include "blocky.chart" . }}
{{ include "blocky.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
release: monitoring
{{- end }}
