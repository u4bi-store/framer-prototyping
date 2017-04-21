# 배경 레이어 생성 
bg = new BackgroundLayer backgroundColor: "#FF00FF" # 배경색 정의

# 레이어 생성
layerA = new Layer # 기본 default 상태
    opacity: 1

layerA.states.fade = # fade란 상태
    opacity: .5
    backgroundColor: "#FF0000"

layerA.animate("fade") # fade란 상태를 애니메이션으로 호출

layerA.stateSwitch("fade") # fade란 상태를 스위치로 변경


# 심화
layerA.states.rotate = # rotate란 상태를 정의
    rotation: 360
    animationOptions:
        time: 5

layerA.onTap -> # 정의된 상태대로 순서대로 순환 fade -> rotate
    layerA.stateCycle()
    

# 상태를 덮어 씌울 수도 있다. - 주석 제거 시 오버라이드

# layerA.states.rotate =
#     rotation: 360
#     animationOptions:
#         time: 1    