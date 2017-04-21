# 배경 레이어 생성 
bg = new BackgroundLayer backgroundColor: "#FF00FF" # 배경색 정의

# 레이어 생성
layerA = new Layer
    backgroundColor: "#FFF" # 배경색 정의

layerA.draggable.enabled = true # layerA에 대한 드래그 속성 활성화

layerA.draggable.horizontal = true # 가로 드래그 활성화
# layerA.draggable.vertical = false  # 세로 드래그 비활성화 / 주석 제거시 비활성화

# horizontal, vertical 모두 기본값은 true
 
layerA.draggable.speedX = .5 # layerA를 드래그시 X축으로 이동하는 속도
layerA.draggable.speedY = .5 # layerA를 드래그시 Y축으로 이동하는 속도

## 드래그에 대한 이벤트

layerA.onDragStart ->  # 드래그를 시작하였을 때 나타나는 콜백
    layerA.animate
        scale: 1.5 # layerA의 스케일을 1.5로 지정

layerA.onDragEnd -> # 드래그를 끝냈을 때 나타나는 콜백
    layerA.animate
        # scale: 1 # layerA의 기본 스케일인 1로 정의 / 주석 제거시 스케일 적용