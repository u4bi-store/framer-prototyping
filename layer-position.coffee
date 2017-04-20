# 배경 레이어 생성 
bg = new BackgroundLayer backgroundColor: "#FF00FF" # 배경색 정의
 
# 레이어 생성
layerA = new Layer
    backgroundColor: "#FFF" # 배경색 정의

# layerB란 레이어 생성
layerB = new Layer

layerB.x = layerA.midX # layerB의 x축을 layerA의 너비 중앙지점(midX)으로 설정
layerB.y = layerA.midY # layerB의 y축을 layerA의 높이 중앙지점(midY)으로 설정

# layerC란 레이어 생성
layerC = new Layer
    x: 300 # x축 지정
    y: 300 # y축 지정
    backgroundColor: "skyblue" # 스카이블루 색으로 배경 정의 

# layerD란 레이어 생성
layerD = new Layer
    width : 100  # 너비 지정
    height : 100 # 높이 지정
    parent: layerC # 부모 레이어를 layerC로 지정
    x: Align.right  # 부모의 오른편으로 정렬
    y: Align.bottom # 부모의 하단으로 정렬
    # Align에는 left(왼편), right(오른편), top(상단), bottom(하단), center(중앙) 속성이 있음
    