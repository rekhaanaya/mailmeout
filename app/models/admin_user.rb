
require 'digest/sha1'

class AdminUser < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :password, :email 

belongs_to :userhome 

attr_accessor :hashed_password, :salt
EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i



# new "sexy" validation

validates :first_name, :presence =>true, :length => { :maximum =>25 }
validates :last_name, :presence => true, :length => { :maximum =>50 }
validates :email, :presence =>true, :length => { :maximum =>100}, :format => EMAIL_REGEX, :confirmation => true

#only create ,so other attributes of this user can be changed
 validates_length_of :password, :within => 8..25, :on => :create


before_save :create_hashed_password
after_save :clear_password


scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
scope :sorted, order("admin_users.last_name ASC, admin_users.first_name ASC")










attr_protected :hashed_password, :salt

def name

"#{first_name} #{last_name}"

end

def self.authenticate(email="", password="")
user = AdminUser.find_by_email(email)
if user && user.password_match?(password)
return user

else
return false

end
end


def password_match?(password="")
hashed_password = AdminUser.hash_with_salt(password,salt)
end




def self.make_salt(email="")
Digest::SHA1.hexdigest("Use #{email} with #{Time.now} to make salt")
end



def self.hash_with_salt(password="",salt="")
Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
end


private

def create_hashed_password

unless password.blank?
self.salt = AdminUser.make_salt(email) if salt.blank?
self.hashed_password = AdminUser.hash_with_salt(password, salt)
end
end

def clear_password
self.password = nil
end






end
