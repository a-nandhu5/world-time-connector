%dw 2.0
fun formattedTime(transactionId : String) :Object = 
{
  time: now() >> "IST",
  status: "Success",
  transactionId: transactionId
}