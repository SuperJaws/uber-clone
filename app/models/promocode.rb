class Promocode < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :courses, inverse_of: :promocode

	enum effect_type: [ :percent, :fixed ]
	Effect_type_alias = {'percent' => "Pourcentage du total d'une course (%)", 'fixed' => "Réduction fixe (€)"}
	Effect_type_select = [ [Effect_type_alias['percent'], :percent], [Effect_type_alias['fixed'], :fixed] ]

	enum effect_length: [ :days, :uses ]
	Effect_length_alias = {'days' => "Nombre de jours", 'uses' => "Nombre d'utilisations"}
	Effect_length_select = [ [Effect_length_alias['days'], :days], [Effect_length_alias['uses'], :uses] ]
end
