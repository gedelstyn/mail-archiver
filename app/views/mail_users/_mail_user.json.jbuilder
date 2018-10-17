json.extract! mail_user, :id, :first_name, :last_name, :email, :password, :created_at, :updated_at
json.url mail_user_url(mail_user, format: :json)
