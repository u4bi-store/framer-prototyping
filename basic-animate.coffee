# 배경 레이어 생성 
bg = new BackgroundLayer backgroundColor: "#FF00FF" # 배경색 정의
 
# 레이어 생성
layerA = new Layer
    backgroundColor: "#FFF" # 배경색 정의
    
layerA.animate # layerA에 애니메이션 지정
    properties: # 애니메이션 속성 
        y: 300 # 진행 방향 
    time: 5 # 5초란 시간에 맞춰 y축이 300 지점으로 향하게 한다
  
# layerB란 레이어 생성
layerB = new Layer
    x: 200

layerB.animate # layerB에 애니메이션 지정
    properties: # 애니메이션 속성
        y: 300        # 도달할 진행 방향
        rotationZ: 90 # 도달할 회전축의 방향
        scale: 2      # 도달할 스케일 값
    time: 10 # 10초동안에 회전축(z축)을 90도 돌리게 한다.
    
# layerC란 레이어 생성
layerC = new Layer
    x: Align.center # 부모의 중앙으로 정렬
    y: Align.center # 부모의 중앙으로 정렬

# 응용
layerC.animate # layerB에 애니메이션 지정
    properties: # 애니메이션 속성
       y: Align.bottom # 진행 방향
       rotationZ: 360     # 도달할 회전축의 방향
       borderRadius : 100 # 도달할 반지름 값
       scale : .8         # 도달할 스케일 값
    time : 5 # 5초동안에 properties에 정의된 속성들을 진행한다