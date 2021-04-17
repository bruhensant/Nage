extends Label

var consoantes = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
var vogais = ['a','e','i','o','u', 'y']
var complementares = ['a','e','h','i','k','l','n','o','r','s','u']

func nome():
	var nome_gerado = ''
	for i in 1+(randi() % 2 + 1):
		var complemento = bool(randi() % 1)
		if complemento:
			nome_gerado += consoantes[randi() % consoantes.size()] + vogais[randi() % vogais.size()]
		else:
			nome_gerado += consoantes[randi() % consoantes.size()] + vogais[randi() % vogais.size()] + complementares[randi() % complementares.size()]
	return nome_gerado.capitalize()

func _input(_event):
	if Input.is_action_pressed("ui_accept"):
		
		set_text(nome())

func _ready():
	randomize()