# set global defaults and extra variables typically in the pagy.rb initializer
# they will get merged with every new Pagy instance
require 'pagy/extras/bootstrap'
require 'pagy/extras/i18n'

Pagy::VARS[:items]    = 15
Pagy::VARS[:some_var] = 'default value'

# create a new instance (usually done automatically by the #pagy controller method)
#pagy = Pagy.new(count: 1000, page: 3, instance_var: 'instance var')
#=> #<Pagy:0x000056070d954330 ... >

# fetch variables (with global default)
#pagy.vars[:some_var]
#=> "default value"

# fetch variables passed to the instance
#pagy.vars[:instance_var]
#=> "instance var"

# fetch instance attributes
#pagy.items
#=> 25

# get the page series
#pagy.series