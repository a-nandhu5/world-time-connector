%dw 2.0
fun formattedTime(transactionId : String) :Object = 
{
  time: now(),
  status: "Success",
  transactionId: transactionId
}