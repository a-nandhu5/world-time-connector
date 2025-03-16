%dw 2.0
fun formattedTime(transactionId : String) :Object = 
{
  time: now() as DateTime as String {"format": "dd/MM/YYYY"},
  status: "Success",
  transactionId: transactionId
}