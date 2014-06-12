module FeatureFlagsHelper

  def feature? feature_name
		features = YAML.load_file( File.absolute_path 'config/features.yml' ).with_indifferent_access
		features[feature_name]
  end
end