{{- define "aardvark.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "aardvark.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "aardvark.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
