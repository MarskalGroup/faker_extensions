FakerExtensions
===============
Handy extensions to enhance the capabilities of the [Faker Gem](https://github.com/stympy/faker)

It comes in very handy for generating realistic dummy or seed data in large quantities for testing.

Installing
----------
```bash
gem install faker_extensions
```

##Usage
-----
```ruby

# => returns true or false always a 50/50 proposition
Faker::coin_flip

# => returns true or false always a 50/50 proposition
Faker::random_paragraphs(p_max_paragraphs, p_paragraph_separator, p_allow_nil)

  Faker::random_paragraphs(5, "\n", true)    #generate either none or up to 5 paragraphs separated by a newline
  Faker::random_paragraphs(10, "  ", false)  #generate 1 to 10 paragraphs separated by 2 spaces

# => returns true  most of the time..between 51 and 99, default - 75% true
Faker::mostly_true(p_pct = 75)

  Faker::mostly_true            #return true approximately 75% (randomly) of the time
  Faker::mostly_true(99)        #return true approximately 99% (randomly) of the time

# => returns false most of the time..between 51 and 99, default - 75% true
Faker::mostly_false(p_pct = 75)

  Faker::mostly_false            #return false approximately 75% (randomly) of the time
  Faker::mostly_false(99)        #return false approximately 99% (randomly) of the time


# => returns the male parameter 50% of the time and the female fo% of the time (approximately and randomly)
Faker::gender(p_male = 'male', p_female = 'female')

  Faker:gender                   #randomly select between male and female
  Faker:gender('boy', 'girl')    #randomly select between boy and girl
  Faker:gender('grandma', 'grandpa')    #randomly select between grandma and grandpa
  Faker:gender(I18n.t('gender.male'), I18n.t('gender.female'))  #internationalization way to select gender
   #Note Internationalization must be handled by calling method, fake does nothing more in this case than choose between two values

# => returns a randomly selected  integer between p_from and p_to
Faker::integer_range(p_from, p_to)

  Faker::integer_range(p_from, p_to)  #get an integer between one and 5

# => returns a randomly selected  date between p_from and p_to
Faker::date_range(p_from, p_to)

  Faker::date_range(Date.today - 1.year, Date.today)  #get an date from a year ago until today


```

Contributing
------------

Contact
-------
Comments and feedback are welcome. Send an email to Mike Urban via mike@marskalgroup.com

License
-------
This code is free to use under the terms of the MIT license.
