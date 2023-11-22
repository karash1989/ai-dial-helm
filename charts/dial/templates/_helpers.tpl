{{/*
Compile all warnings into a single message.
{{- $messages := append $messages (include "dial.validateValues.foo" .) -}}
{{- $messages := append $messages (include "dial.validateValues.bar" .) -}}
*/}}
{{- define "dial.validateValues" -}}
{{- $messages := list -}}
{{- $messages := without $messages "" -}}
{{- $message := join "\n" $messages -}}

{{- if $message -}}
{{-   printf "\nVALUES VALIDATION:\n%s" $message -}}
{{- end -}}
{{- end -}}
