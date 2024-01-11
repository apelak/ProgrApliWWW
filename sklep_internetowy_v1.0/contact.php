<link rel="stylesheet" href="css/contact.css">
<?php

include('cfg.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';

function PokazKontakt(){
	echo '
    <div><br>
        <h1 class="naglowek">Wyślij mail</h1>
            <form method="post" enctype="multipart/form-data" action="'.$_SERVER['REQUEST_URI'].'">
                <table>
					<tr><td>Nadawca:</td><td><input type="text" name="nadawca" required/></td></tr>
                    <tr><td>E-mail:</td><td><input type="text" name="adres" required/td></tr>
					<tr><td>Temat:</td><td><input type="text" name="temat" required/></td></tr>
                    <tr><td>Wiadomość:</td><td><textarea name="tresc" rows="5" cols="25" required></textarea></td></tr>                 
                    <tr><td></td><td><input type="submit" name="wyslij_mail"  value="Wyślij mail" /></td></tr>
                </table>
            </form>
    </div>
	';
}

function WyslijMailKontakt(){
	
	global $config;
	PokazKontakt();
	
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wyslij_mail'])) {
		$mail = new PHPMailer(true);
		
        try {
			$mail->CharSet = "UTF-8";
            $mail->SMTPDebug = 0; 
            $mail->isSMTP();
            $mail->Host = $config['smtp_host'];
            $mail->SMTPAuth = $config['smtp_auth'];
            $mail->Username = $config['smtp_username'];
            $mail->Password = $config['smtp_password'];
            $mail->SMTPSecure = $config['smtp_secure'];
            $mail->Port = $config['smtp_port'];

            $mail->setFrom($_POST['adres'], $_POST['nadawca']);
			$mail->AddReplyTo($_POST['adres'], $_POST['nadawca']);
            $mail->addAddress("arczibiceq@gmail.com");

            $mail->isHTML(false);
            $mail->Subject = $_POST['temat'];
            $mail->Body = $_POST['tresc'];

            $mail->send();
			echo "<script>window.location.href='contact.php';</script>";
            echo '<center>Wiadomość została wysłana</center>';
			exit();
        } catch (Exception $e) {
             echo '<center>Wiadomość nie została wysłana.</center>';
        }
    } 
}

WyslijMailKontakt();

?>