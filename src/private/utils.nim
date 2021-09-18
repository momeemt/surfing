import times

template timeMeasure* (condition: bool, body: untyped): untyped =
  var start_times: Time
  if condition:
    start_times = getTime()
  body
  if condition:
    echo "time: " & $(getTime() - start_times)

proc hr* =
  echo "---------------------------------"