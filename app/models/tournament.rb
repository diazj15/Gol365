class Tournament < ActiveRecord::Base
	enum category_values: { "Primera" => 0, "Segunda" => 1, "Seleccion" => 2, "Legionarios" => 3 }
end
