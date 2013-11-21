module SendBackgroundEmail
	queue = :default

	def self.perform(from_email, email_params)
	#Code in here is what happens when its executed by the worker
	email_to = params["email_destination"]
	email_subject = params["email_subject"]
	email_body = params["email_body"]	
	Mail.deliver do
		to email_to
		from from_email
		subject email_subject
		body email_body
		end
	end
end
