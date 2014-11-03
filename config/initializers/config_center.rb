module ConfigCenter

  module GeneralValidations

    # xxxx@yyyy.zzz format
    EMAIL_FORMAT_REG_EXP = /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i

    # xxx-xxx-xxxx format
    MOBILE_FORMAT_REG_EXP = /\A([0-9\(\)\/\+ \-]){3}-([0-9\(\)\/\+ \-]){3}-([0-9\(\)\/\+ \-]){4}\z/i

    # xxx-xxx-xxxx format
    # PHONE_FORMAT_REG_EXP = /\A\(([0-9\(\)\/\+ \-]){3}\) ([0-9\(\)\/\+ \-]){3}-([0-9\(\)\/\+ \-]){4}\z/i

    # Generic Name
    # a to z (both upper and lower case),space, dot(.) and curly brackets "(" & ")" allowed.
    NAME_MIN_LEN = 2
    NAME_MAX_LEN = 32
    NAME_FORMAT_REG_EXP = /\A([A-Za-z ])+\z/i

    # User Name
    # Minimum length is 6 by default and maximum length is 32 by default
    # Only characters (both upper and lowercase), numbers, dot(.), underscore (_)
    # No spaces, hyphen or any other special characters are allowed
    USERNAME_MIN_LEN = 6
    USERNAME_MAX_LEN = 128
    USERNAME_FORMAT_REG_EXP = /\A[a-zA-Z0-9\_]*\z/

    #First Name
    # No spaces, hyphen or any other special characters are allowed
    # Only characters (both upper and lowercase)
    # Minimum length is 2 by default and maximum length is 32 by default
    FIRSTNAME_MIN_LEN = 2
    FIRSTNAME_MAX_LEN = 32
    FIRSTNAME_FORMAT_REG_EXP = /\A([A-Za-z ])+\z/

    #Last Name
    # No spaces, hyphen or any other special characters are allowed
    # Only characters (both upper and lowercase)
    # Minimum length is 2 by default and maximum length is 32 by default
    LASTNAME_MIN_LEN = 2
    LASTNAME_MAX_LEN = 32
    LASTNAME_FORMAT_REG_EXP = /\A([A-Za-z ])+\z/

    # Password
    # should have atleast 1 Character (a to z (both upper and lower case))
    # and 1 Number (1 to 9)
    # and 1 Special Character from (!,@,$,&,*,_)",
    PASSWORD_MIN_LEN = 8
    PASSWORD_MAX_LEN = 32
    PASSWORD_FORMAT_REG_EXP = /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.+[0-9])(?=.*?[!@$#&*_\.,;:])/


    PHONE_MIN_LEN = 12
    PHONE_MAX_LEN = 12
    PHONE_FORMAT_REG_EXP = /[0-9]{3}[-][0-9]{3}[-][0-9]{4}/

    DOCTOR_NAME_FORMAT_REG_EXP = /\A([A-Za-z .])+\z/
  end

  module Practice
    STATES = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland","Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
  end

  module Admin
    DEFAULT_PASSWORD = "passwordM@1"
    EXCLUDED_JSON_ATTRIBUTES_WITH_EMAIL = [:password_digest, :created_at, :updated_at]
    EXCLUDED_JSON_ATTRIBUTES = [:id, :email, :auth_token, :password_digest, :created_at, :updated_at]
  end

  module User
    DEFAULT_PASSWORD = "passwordM@1"
    EXCLUDED_JSON_ATTRIBUTES_WITH_EMAIL = [:password_digest, :created_at, :updated_at]
    EXCLUDED_JSON_ATTRIBUTES = [:id, :email, :auth_token, :password_digest, :created_at, :updated_at]
  end

  module Defaults

    # the default number of milli seconds for which resource listing pages gets refreshed:
    REFRESH_PAGE_IN_MILLI_SECONDS = 180000

    # It will list 10 items per page unless user request to load more (this is done by passing 'per_page' in url)
    ITEMS_PER_LIST = 25
    # It will override the per_page to 10 (default val - ITEMS_PER_LIST), in case if the user request for more items to load in a single listing page.
    # i.e if user passes per_page=251 (greater than MAX_ITEMS_PER_LIST), system will ignore it and fall back to default no of items to be listed in a page (ITEMS_PER_LIST)
    MAX_ITEMS_PER_LIST = 250

    # Default password to be assigned while mocking a user
    PASSWORD = "Password@1"

    # Other constans should follow here.
    EXCLUDED_JSON_ATTRIBUTES = []

    end

end
