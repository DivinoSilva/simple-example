# 
ENTITIES = [Color, Size]
FEATURES = {
  Size => ['1', '2', '3', '4', '5'],
  Color => ['verde', 'azul', 'preto', 'branco']
}

ENTITIES.each do |e|
  FEATURES[e].each{ |f| e.create(name: f) }
end