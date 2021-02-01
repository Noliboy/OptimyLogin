*** Settings ***
Documentation        Basic Login Functionality
Suite Setup          resource.Access Login page
Suite Teardown       Close Browser
Resource             resource.txt

*** Variables ***
${valid_email}                vespa@world.com
${invalid_email}              me@you@us.com
${valid_password}             P4ssw0rd
${invalid_password}           H3110_w0r1d
${invalid_email_error}        Please enter a valid email address (e.g.: john.smith@gmail.com).
${empty_email_error}          This field is required.
${empty_password_error}       This field is required.
${incorrect_error}            The email address or password is incorrect. 
${login_attempts_error}       This account has been locked due to too many failed login attempts.

*** Test Cases ***
Validate that empty fields will display error messages
    [Documentation]  Negative test scenarios
    [Tags]  Empty field
             
    Check empty fields errors           ${empty_email_error}        ${empty_password_error}

Validate that empty email field will display an error message
    [Documentation]  Negative test scenarios
    [Tags]  Empty field
             
    Enter password value                ${valid_password}
    Check empty email field error       ${empty_email_error}       

Validate that empty password field will display an error message
    [Documentation]  Negative test scenarios
    [Tags]  Empty field

    Enter email value                    ${valid_email}   
    Delete password value      
    Check empty password field error     ${empty_password_error}

Validate that invalid credentials an error message
    [Documentation]  Negative test scenarios
    [Tags]  Invalid credentials

    Enter email value                   ${invalid_email}                    
    Enter password value                ${invalid_password}              
    Check email error                   ${invalid_email_error}

Validate that invalid email display an error message
    [Documentation]  Negative test scenarios
    [Tags]  Invalid credentials

    Enter email value                    ${invalid_email}                    
    Enter password value                 ${valid_password}   
    Check email error                    ${invalid_email_error}     

Validate that invalid password display an error message
    [Documentation]  Negative test scenarios
    [Tags]  Invalid credentials

    Enter email value                    ${valid_email}                    
    Enter password value                 ${invalid_password}           
    Check incorrect error                ${incorrect_error}

Validate that many attempts of invalid credentials display an error message
    [Documentation]  Negative test scenarios
    [Tags]  Invalid credentials

    Enter email value                    ${valid_email}                    
    Enter password value                 ${invalid_password}           
    Check login attempts error           ${login_attempts_error}  
