*** Variables ***
${Email_TB2}      //img[@src="/images/logo.png"]/following::input[@placeholder="Email"][2]
${RecoverAccess_Btn}    //button[contains(text(),'Recover my access')]
${Cancel_Btn}     //a[contains(text(),'cancel')]
${ErrorMsgEmail_TB}    //img[@src="/images/logo.png"]/following::span[contains(text(),'This field is required.')][2]
${InvalidEmail}    aaaaa@#@:"['
${ErrorMsgEnterValidEmail}    //span[contains(text(),'Please enter a valid email address (e.g.: john.smith@gmail.com).')]
${Valid_Email}    test110@gmail.com
${MessageAfterValidEmailEntered}    //div[contains(text(),'A link enabling you to recover access to your Optimy Tool account has just been sent to the email address')]
${LostPassword}    //a[contains(text(),'Lost password')]
