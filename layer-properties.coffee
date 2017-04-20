# 배경 레이어 생성 
bg = new BackgroundLayer
    backgroundColor: "#FF00FF" # 배경색 정의
 
# 레이어 생성
layerA = new Layer
    x: 0 # X축
    y: 0 # Y축
    width: 200  # 너비
    height: 200 # 높이
    backgroundColor: "#FFF" # 배경색 정의

layerA.borderRadius = 20 # 보더 반지름
layerA.rotation = 45 # 회전
layerA.opacity = 0.5 # 불투명도
layerA.scale = 1.5 # 스케일 지정