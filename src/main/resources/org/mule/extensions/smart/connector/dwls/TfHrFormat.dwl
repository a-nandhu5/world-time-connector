%dw 2.0
fun formattedTime(transactionId : String) :Object = 
{
  time: now() as Time as String {"format": "kk:mm:ss"},
  status: "Success",
  transactionId: transactionId
}