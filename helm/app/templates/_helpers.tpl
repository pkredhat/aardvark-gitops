{{- define "aardvark.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "aardvark.fullname" -}}
{{- .Release.Name -}}
{{- end -}}
