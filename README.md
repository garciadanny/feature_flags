# Feature Flags (Toggles) Demo

To continue moving towards continuous integration, feature toggles can provide a way to deploy to production while enabling/disabling
certain features based on certain criteria.

##### For Example:
1) Only show feature-a in development until it is completed.

2) Only show feature-b to users in some geographical location.

3) Only show feature-c to users that are part of a specific organization.

## Purpose of this demo app
The purpose of this demo app is to simply experiement with possible implementations. So far there is a simple helper method that reads each enabled/disabled feature from a config file. This helper method is used in the view. 

## Usage
###### View file 
	<% if feature? :some_new_feature %>
	  <div class="container">
	    Do something awesome here. 
	  </div>
	<% end %>
	
###### config/featuers.yml
	some_new_feature: true
	some_old_feature: false
	some_unfinished_feature: !Rails.env.production?

## Implementation of the helper method

###### app/helpers/feature_flags_helper.rb
	module FeatureFlagsHelper

	  def feature? feature_name
		features = YAML.load_file( File.absolute_path 'config/features.yml' ).with_indifferent_access
		features[feature_name]
	  end
	end