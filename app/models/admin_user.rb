class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end

# Validaciones
# Ajax (dinamico: contador de usuarios en rifas. Javascript+ajax)
# Detalles: Fsvicon, menu que funcione, plantilla,
# Javascript (carrusel, geolocaliacion, etc)
