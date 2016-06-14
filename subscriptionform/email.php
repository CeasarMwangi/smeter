<!DOCTYPE html>
<html>
<title>HTML Tutorial</title>
<body>

<h1>test to send an email</h1>
<?php

		$to ="....";
		
		$subject="Just a trial email";
$body="Hello and warm greeting";
if(mail($to,$subject,$body)){

	echo "email sent to ....";
}else{
	echo "email was not sent!!!";

}
?>

</body>
</html>