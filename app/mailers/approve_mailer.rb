class ApproveMailer < ApplicationMailer

    def approve_email(user, contract, renter, template)
        @user = user
        @url  = 'http://rentAcar.com'
        @contract = contract
        @renter = renter.email
        mail(to:@user.email, subject: 'Contract is Approved', template_name: template)
    end

end
