//%attributes = {}
C_LONGINT:C283($status; $1)

$status:=$1

SET DATABASE PARAMETER:C642(Tips enabled:K37:79; $status)
EnableTips:=$status