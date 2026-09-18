{{- define "nginx-test.name" -}}
{{ .Chart.Name }}
{{- end }}



{{- define "nginx-test.fullname" -}}
{{ .Release.Name }}-{{ include "nginx-test.name" . }}
{{- end }}