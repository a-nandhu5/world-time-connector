%dw 2.0

fun currentTimeUs(format: String, transactionId: String) :object = 
	if (format == "ISO 8601")({
		time: (now() >> "America/New_York"),
		status: "Success",
		transactionId: transactionId
	})
	else if(format == "24-hour format")({
		time: (now() >> "America/New_York") as Time as String {"format": "kk:mm:ss"},
		status: "Success",
		transactionId: transactionId
	})
	else if(format == "12-hour format")({
		time: (now() >> "America/New_York") as Time as String {"format": "hh:mm:ss"},
		status: "Success",
		transactionId: transactionId
	})
	else if(format == "DDMMYY")({
		time: (now() >> "America/New_York") as String {"format": "dd/MM/YY"},
		status: "Success",
		transactionId: transactionId
	})
	else if(format == "DDMMYYYY")({
		time: (now() >> "America/New_York") as DateTime as String {"format": "dd/MM/YYYY"},
		status: "Success",
		transactionId: transactionId
	})
	else {
		"error":"Incorrect value selected"
	}