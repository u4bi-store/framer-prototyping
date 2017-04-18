layerA = new Layer
	x:0
	y:0
	width:250
	height:350
# 	backgroundColor: "#FF0000"
	
scroll = new ScrollComponent
    superLayer: layerA
    x:20
    y:20
    width:710
    height:300
    scrollHorizontal: false
    
# some ocntent to make it scroll

todoArray = []

for i in [0..50]
	todoArray[i] = new Layer
		name : "#{i}"
		x:0
		y:0 + (i *31)
		width:220
		height:28
		html: "#{i}번 아이템"
		backgroundColor : "rgba(0, 0, 0, 0.3)"
		superLayer: scroll.content
		
for i in [0..50]
    todoArray[i].flag = false
    todoArray[i].onTap (event, layer) ->
        showMenu(event, layer)

showMenu = (event, layer) ->
    temp = todoArray[layer.name].flag
    if temp
        data = {
            x : 0
            opacity : 1
            text : ""
            backgroundColor : "rgba(0, 0, 0, 0.3)"
        }
    else
        data = {
            x : -100
            opacity : 0.5
            text : "(선택)"
            backgroundColor : "#FF0000"
        }
    layer.html = "#{layer.name}번 아이템 #{data.text}"
    layer.backgroundColor = data.backgroundColor
    layer.animate
        properties:
            x: data.x
            opacity: data.opacity
     
     print layer.animate
     todoArray[layer.name].flag = !todoArray[layer.name].flag