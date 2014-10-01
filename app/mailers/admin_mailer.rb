class AdminMailer < ActionMailer::Base

  def new_user_waiting_for_approval(org_name, admin_emails)
    @org = Organisation.find_by_id org_name
    mail(subject: "There is a User Waiting for Admin Approval to '#{org_name}'",
         to: admin_emails ,
         from: "support@harrowcn.org.uk",
         cc: "technical@harrowcn.org.uk",
         reply_to: "support@harrowcn.org.uk")
  end
end