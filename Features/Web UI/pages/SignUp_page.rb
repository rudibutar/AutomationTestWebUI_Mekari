class SignUpPage
  attr_accessor :signInTab, :nameTxt, :emailTxt, :passwordTxt , :rePasswordTxt, :btnCreateAccount, :btnCreateAccountAgain, :validationNumber, :verifyBtn

  def initialize(browser)
    @browser = browser
    @signInTab = @browser.element(:id => "nav-link-accountList")
    @btnCreateAccount = @browser.element(:id => "createAccountSubmit")
    @nameTxt = @browser.text_field(:id => "ap_customer_name")
    @emailTxt = @browser.text_field(:id => "ap_email")
    @passwordTxt = @browser.text_field(:id => "ap_password")
    @rePasswordTxt = @browser.text_field(:id => "ap_password_check")
    @btnCreateAccountAgain = @browser.element(:id => "continue")
    @validationNumber = @browser.text_field(:xpath => '//*[@id="cvf-page-content"]/div/div/div[1]/form/div[2]/input')
    @verifyBtn = @browser.element(:id => "a-autoid-0-announce")
  end

  def visit
    @browser.goto "https://www.amazon.com"
  end

  def clickSignInTab()
    @signInTab.click
  end

  def clickCreateButton
    @btnCreateAccount.click
  end

  def entertedName(name)
    @nameTxt.set(name)
  end

  def enteredEmail(email)
    @emailTxt.set email
  end

  def enteredPassword(password)
    @passwordTxt.set password
  end

  def reEnteredPassword(repassword)
    @rePasswordTxt.set repassword
  end

  def clickCreateButtonAgain
    @btnCreateAccountAgain.click
  end

  def enteredValidationNumber(otp)
    @validationNumber.set otp
  end

  def clickVerifyButton
    @verifyBtn.click
  end
end
