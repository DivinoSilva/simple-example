# 
ENTITIES = [Color, Size]
FEATURES = {
  Size => ['P', 'M', 'G', 'GG', 'XXG'],
  Color => ['verde', 'azul', 'preto', 'branco']
}

ENTITIES.each do |e|
  FEATURES[e].each{ |f| e.create(name: f) }
end