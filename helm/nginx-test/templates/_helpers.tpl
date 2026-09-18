{{- define "nginx-test.name" -}}
{{ .Chart.Name }}
{{- end }}



{{- define "nginx-test.fullname" -}}
{{- if contains (include "nginx-test.name" .) .Release.Name -}}
{{ .Release.Name }}
{{- else -}}
{{ .Release.Name }}-{{ include "nginx-test.name" . }}
{{- end -}}
{{- end }}