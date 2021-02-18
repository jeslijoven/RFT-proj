*** Variables ***
${browser}        ff
${URL}            https://login.optimyapp.com/
${Optimy_Logo}    //img[@src="/images/logo.png"]
${Email_TB}       //img[@src="/images/logo.png"]/following::input[@placeholder="Email"][1]
${Passsword_TB}    //input[@placeholder="Password"]
${Login_Button}    //button[contains(text(),'Login')]
${LostPw_Button}    //a[contains(text(),'Lost password')]
${ErrorMsgEmail}    //span[@for='email']    # Error message validations
${ErrorMsgPW}     //span[@for='password']    # Error message validations
${ErrorMsgEnterValidEmail}    //span[contains(text(),'Please enter a valid email address (e.g.: john.smith@gmail.com).')]    # Error message email validation
${PoweredByOptimyBtn}    //div[contains(text(),'Powered by')]
${InvalidEmail}    aaaaa@#@:"['    # Invalid Email testdata
${InvalidPW}      aaa32322    # invalid password testdata
${InvalidEmailPwError}    //img[@src="/images/logo.png"]/following::span[@class='fui-alert'][1]
${ValidEmail}     test110@gmail.com    # valid email testdata
