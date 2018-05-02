class UserMailer < ApplicationMailer

    def notify_email(user, contract, renter, template)
        @user = user
        @url  = 'http://rentAcar.com'
        @contract = contract
        @renter = renter.email
        mail(to:@user.email, subject: 'A new contract is generated', template_name: template)
    end


end
