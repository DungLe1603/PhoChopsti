<?php
	$date = new DateClass();
	$stringObj = new String();

	$txtName = $_POST['hoten'];
	$txtSinhnhat = $_POST['sinhnhat'];
	$txtKhuvuc = $_POST['khuvuc'];
	$txtAdd = $_POST['add'];
	$txtPhone = $_POST['sodienthoai'];
	$txtEmail = $_POST['email'];

	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];
	$email_to = getConstant('email_contact');
	$date = new DateClass(); 
	$time_now = time();
	$datetime_now = $date->vnDateTime($time_now);

	$subject = "[".$dk."] ".$txtName." (".$datetime_now.")";	
	$message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #ed3237;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' . HOME_URL_LANG .'" target="_blank"><img src="'. HOME_URL . getConstant('file_logo') .'" style="max-height:70px;max-width:80%;" alt="' . getConstant('meta_site_name') . '" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #ed3237;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">'.$chao.' <b> '.$txtName.'</b>,</p><p style="margin: 10px 0">'.$txtContact_sendOk.'</p><p style="margin: 10px 0"><b style="text-decoration:underline;">'.$ttkh.'</b><br/><label style="font-weight:600;padding-left:12px;">'.$hvteb.': </label> ' .$txtName.'<br/><label style="font-weight:600;padding-left:12px;">'.$ntns.': </label> '.$txtSinhnhat.'<br/><label style="font-weight:600;padding-left:12px;">'.$kvss.': </label> '.$txtKhuvuc.'<br/><label style="font-weight:600;padding-left:12px;">'.$txtContact_address.': </label> '.$txtAdd.'<br/><label style="font-weight:600;padding-left:12px;">'.$sdtph.': </label> '.$txtPhone.'<br/><label style="font-weight:600;padding-left:12px;">Email: </label> '.$txtEmail.'<br/><label style="font-weight:600;padding-left:12px;">IP: </label> '.$IP_NUMBER.'<br/><label style="font-weight:600;padding-left:12px;">Ngày gửi: </label> '.$datetime_now.'<br/></p><p style="margin: 10px 0">'.$hkt.'</p><p style="margin: 10px 0">'.$ctcon.'</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;">' . getConstant('meta_site_name') . '</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="' . getConstant('link_facebook') . '" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="' . getConstant('link_twitter') . '" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';

	$db->table = "order";
	$data = array(
		'name'=>$db->clearText($txtName),
		'email'=>$db->clearText($txtEmail),
		'phone'=>$db->clearText($txtPhone),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'created_time'=>$time_now
	);
	$db->insert($data);

	$send_mail = sendMailFn($txtEmail, $txtName, $email_to, 'Đăng ký', $subject, $message, '', $txtEmail, $txtName);
	if($send_mail == TRUE)
		echo $txtContact_sendOk;
	else
		echo $txtContact_sendDie;

