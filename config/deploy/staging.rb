# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, 'ec2-54-83-31-176.compute-1.amazonaws.com'
role :web, 'ec2-54-83-31-176.compute-1.amazonaws.com'
role :db,  'ec2-54-83-31-176.compute-1.amazonaws.com'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'ec2-54-83-31-176.compute-1.amazonaws.com', user: 'bitnami', roles: %w{web app db}, my_property: :my_value

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server
server 'ec2-54-83-31-176.compute-1.amazonaws.com',
#   user: 'user_name',
#   roles: %w{web app},
   	ssh_options: {
    user: 'bitnami', # overrides user setting above
	keys: %w(/home/trucktor/Dropbox/street.pem),
	forward_agent: false,
	auth_methods: %w(publickey password)
#     # password: 'please use keys'
	}
# setting per server overrides global ssh_options
